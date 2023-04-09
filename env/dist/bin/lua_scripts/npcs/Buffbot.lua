-- Buffbot NPC

local NPC_ENTRY = 9000008
local GOSSIP_ID_BUFF = 1

local GOSSIP_EVENT_ON_HELLO = 1
local GOSSIP_EVENT_ON_SELECT = 2

local BUFFS = {
    25898, -- Greater Blessing of Kings
    --Multiple Pally Blessings do not work right now..
    --48934, -- Greater Blessing of Might 
    --48938, -- Greater Blessing of Wisdom
    48162, -- Prayer of Fortitude
    48470, -- Mark of the Wild
    48074, -- Prayer of Spirit
    48170, -- Prayer of Shadow Protection
    43002 -- Arcane Brilliance
}

local function Buff(player, buffNpc)
    for key, buffId in pairs(BUFFS) do
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
        Buff(player, object)
    end

    player:GossipComplete()
end

RegisterCreatureGossipEvent(NPC_ENTRY, GOSSIP_EVENT_ON_HELLO, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ENTRY, GOSSIP_EVENT_ON_SELECT, OnGossipSelect)