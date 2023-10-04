-- Book of Rezzing item: Summons Rezzbot-NPC on use

local ITEM_ENTRY = 701135
local NPC_ENTRY = 9000011
local DESPAWN_TIME_MS = 60000 -- in ms
local COOLDOWN_S = 60 -- in seconds

local TEMPSUMMON_TIMED_DESPAWN = 3
local ITEM_EVENT_ON_USE = 2
local CREATURE_EVENT_ON_ADD = 36
local CREATURE_EVENT_ON_REMOVE = 37
local PLAYER_EVENT_ON_KILLED_BY_CREATURE = 8

local playerToCreatureMap = {}

function Player:SetRezbotCreature(creature)
    playerToCreatureMap[tostring(self:GetGUID())] = creature:GetGUID()
end

function Player:GetRezbotCreature()
    creatureGUID = playerToCreatureMap[tostring(self:GetGUID())]

    if (creatureGUID == nil) then
        return nil
    end

    local map = self:GetMap()
    return map:GetWorldObject(creatureGUID)
end

local function CanSummon(player)
    return true
end

local function OnUse(event, player, item, target)
    if(CanSummon(player) == false) then 
		return false
	end

    local x, y, z = player:GetRelativePoint(0, 0)
    local npc = player:SpawnCreature(NPC_ENTRY, x, y, z, 0, TEMPSUMMON_TIMED_DESPAWN, DESPAWN_TIME_MS)

    player:SetRezbotCreature(npc)

    return false
end

local function Resurrect(creature, player)
    local playerGUID = player:GetGUID()

    creature:RegisterEvent(function(event, delay, pCall, callbackCreature) 
        local map = callbackCreature:GetMap()
        local callbackPlayer = callbackCreature:GetMap():GetWorldObject(playerGUID)
        if (callbackPlayer) then
            callbackCreature:CastSpell(callbackPlayer, 25435, true)
        end
    end, 1000, 1)
end

local function OnPlayerKilled(event, killer, killed)
    local npc = killed:GetRezbotCreature()

    if (npc == nil) then
        return
    end

    Resurrect(npc, killed)
end



RegisterItemEvent(ITEM_ENTRY, ITEM_EVENT_ON_USE, OnUse)
RegisterPlayerEvent(PLAYER_EVENT_ON_KILLED_BY_CREATURE, OnPlayerKilled)