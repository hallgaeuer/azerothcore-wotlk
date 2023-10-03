-- Buffbot NPC

local NPC_ENTRY = 9000008
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
    --Multiple Pally Blessings do not work right now..
    --48934, -- Greater Blessing of Might 
    --48938, -- Greater Blessing of Wisdom
    48162, -- Prayer of Fortitude (Rank 4)
    48470, -- Gift of the Wild (Rank 4)
    48074, -- Prayer of Spirit (Rank 3)
    48170, -- Prayer of Shadow Protection (Rank 3)
    43002 -- Arcane Brilliance (Rank 3)
} 


local function DetermineBuffs(player)
    local level = player:GetLevel()
    local range = (math.floor(level / 10)) * 10

    return BUFFS_BY_LEVEL[range]
end

local function Buff(player, buffNpc)
    local buffs = DetermineBuffs(player)

    if (buffs == nil) then
        return
    end

    for key, buffId in pairs(buffs) do
        buffNpc:AddAura(buffId, player)
    end
end

local function OnGossipHello(event, player, unit)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "Buff me with typical raid buffs.", 1, GOSSIP_ID_BUFF)
    player:GossipSendMenu(1, unit)
end

local function OnGossipSelect(event, player, object, sender, intid, code, menu_id)
    if (intid == GOSSIP_ID_BUFF) then
        local group = player:GetGroup()
        local members = group:GetMembers()

        for key, member in pairs(members) do
            Buff(member, object)
        end 
    end

    player:GossipComplete()
end

RegisterCreatureGossipEvent(NPC_ENTRY, GOSSIP_EVENT_ON_HELLO, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ENTRY, GOSSIP_EVENT_ON_SELECT, OnGossipSelect)