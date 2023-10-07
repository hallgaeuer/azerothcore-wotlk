-- Buffbot NPC

local NPC_BUFFBOT_ENTRY = 9000008
local NPC_BUFFBOT_HELPER_ENTRY = 9000012

local AMOUNT_HELPER_CREATURES = 3

local GOSSIP_ID_BUFF = 1
local GOSSIP_EVENT_ON_HELLO = 1
local GOSSIP_EVENT_ON_SELECT = 2

local BUFFS_BY_LEVEL = {}
BUFFS_BY_LEVEL[0] = {
    1243, -- Power Word: Fortitude (Rank 1)
    1459, -- Arcane Intellect (Rank 1)
    1126 -- Mark of the Wild (Rank 1)
}
BUFFS_BY_LEVEL[10] = {
    1244, -- Power Word: Fortitude (Rank 2)
    1460, -- Arcane Intellect (Rank 2)
    5232 -- Mark of the Wild (Rank 2)
}
BUFFS_BY_LEVEL[20] = {
    25898, -- Greater Blessing of Kings
    1245, -- Power Word: Fortitude (Rank 3)
    1460, -- Arcane Intellect (Rank 2)
    6756 -- Mark of the Wild (Rank 3)
}
BUFFS_BY_LEVEL[30] = {
    25898, -- Greater Blessing of Kings
    1245, -- Power Word: Fortitude (Rank 3)
    14752, -- Divine Spirit (Rank 1)
    1461, -- Arcane Intellect (Rank 3)
    5234 -- Mark of the Wild (Rank 4)
}
BUFFS_BY_LEVEL[40] = {
    25898, -- Greater Blessing of Kings
    2791, -- Power Word: Fortitude (Rank 4)
    14818, -- Divine Spirit (Rank 2)
    10156, -- Arcane Intellect (Rank 4)
    8907 -- Mark of the Wild (Rank 5)
}
BUFFS_BY_LEVEL[50] = {
    25898, -- Greater Blessing of Kings
    21562, -- Prayer of Fortitude (Rank 1)
    21849, -- Gift of the Wild (Rank 1)
    14819, -- Divine Spirit (Rank 3),
    23028 -- Arcane Brilliance (Rank 1)
}
BUFFS_BY_LEVEL[60] = {
    25898, -- Greater Blessing of Kings
    21564, -- Prayer of Fortitude (Rank 2)
    21850, -- Gift of the Wild (Rank 2)
    27681, -- Prayer of Spirit (Rank 1)
    27683, -- Prayer of Shadow Protection (Rank 1)
    23028 -- Arcane Brilliance (Rank 1)
}
BUFFS_BY_LEVEL[70] = {
    25898, -- Greater Blessing of Kings
    25392, -- Prayer of Fortitude (Rank 3)
    26991, -- Gift of the Wild (Rank 3)
    32999, -- Prayer of Spirit (Rank 2)
    39374, -- Prayer of Shadow Protection (Rank 2)
    27127 -- Arcane Brilliance (Rank 2)
}
BUFFS_BY_LEVEL[80] = {
    25898, -- Greater Blessing of Kings
    48934, -- Greater Blessing of Might 
    48938, -- Greater Blessing of Wisdom
    48162, -- Prayer of Fortitude (Rank 4)
    48470, -- Gift of the Wild (Rank 4)
    48074, -- Prayer of Spirit (Rank 3)
    48170, -- Prayer of Shadow Protection (Rank 3)
    43002 -- Arcane Brilliance (Rank 3)
} 

Buffbot = {}
function Buffbot.DetermineBuffs(player)
    local level = player:GetLevel()
    local range = (math.floor(level / 10)) * 10

    return BUFFS_BY_LEVEL[range]
end

function Buffbot.Buff(creature, player, helperCreatures)
    local buffs = Buffbot.DetermineBuffs(player)

    if (buffs == nil) then
        return
    end

    local helperCreaturesWerePassed = false
    if (helperCreatures) then
        helperCreaturesWerePassed = true
    end

    local helperCreatures = helperCreatures or Buffbot.SpawnHelperCreatures(creature, AMOUNT_HELPER_CREATURES)
    local helperCreatureIndex = 1

    for key, buffId in ipairs(buffs) do
        local helperCreature = helperCreatures[helperCreatureIndex]
        helperCreature:AddAura(buffId, player)

        -- Cycle available helperCreatures to use a different one on each iteration. This way exclusive buffs like paladin buffs are applied by different helpercreatures
        -- Those exclusive buffs should be defined in order in the BUFFS_BY_LEVEL table
        helperCreatureIndex = helperCreatureIndex % #helperCreatures + 1
    end

    if (helperCreaturesWerePassed == false) then
        Buffbot.DespawnCreaturesFromTable(helperCreatures)
    end
end

function Buffbot.SpawnHelperCreatures(creature, amount)
    local helperCreatures = {}

    for i = 1, amount do
        helperCreatures[#helperCreatures+1] = Buffbot.SpawnHelperCreature(creature)
    end

    return helperCreatures
end

function Buffbot.DespawnCreaturesFromTable(creatures)
    for key, creature in ipairs(creatures) do
        creature:DespawnOrUnsummon()
    end
end

function Buffbot.SpawnHelperCreature(creature)
    return creature:SpawnCreature(NPC_BUFFBOT_HELPER_ENTRY, creature:GetX(), creature:GetY(), creature:GetZ(), creature:GetO())
end

function Buffbot.BuffGroup(creature, player)
    local group = player:GetGroup()

    if (group == nil) then
        Buffbot.Buff(creature, player)
        return
    end

    local members = group:GetMembers()
    -- Create and pass helperCreatures so that creatures are not spawned and despawned for every single player in the party
    local helperCreatures = Buffbot.SpawnHelperCreatures(creature, AMOUNT_HELPER_CREATURES)

    for key, member in pairs(members) do
        Buffbot.Buff(creature, member, helperCreatures)
    end 

    Buffbot.DespawnCreaturesFromTable(helperCreatures)
end

local function OnGossipHello(event, player, unit)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "Buff me with typical raid buffs.", 1, GOSSIP_ID_BUFF)
    player:GossipSendMenu(1, unit)
end

local function OnGossipSelect(event, player, object, sender, intid, code, menu_id)
    if (intid == GOSSIP_ID_BUFF) then
        Buffbot.BuffGroup(object, player)
    end

    player:GossipComplete()
end

RegisterCreatureGossipEvent(NPC_BUFFBOT_ENTRY, GOSSIP_EVENT_ON_HELLO, OnGossipHello)
RegisterCreatureGossipEvent(NPC_BUFFBOT_ENTRY, GOSSIP_EVENT_ON_SELECT, OnGossipSelect)