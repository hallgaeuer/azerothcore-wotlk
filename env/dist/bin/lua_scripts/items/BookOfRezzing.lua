-- Book of Rezzing item: Summons Rezbot-NPC on use. Only usable in dungeons and raids.
-- Rezbot will revive all dead players in the instance after all combat drops. So either after a wipe or after combat where some players died.
-- It will also immediately buff revived player with buffbot buffs

local base64 = require ("Buffbot")

local ITEM_ENTRY = 701135
local NPC_ENTRY = 9000011
local DESPAWN_TIME_MS = 1800000 -- in ms
local TEMPSUMMON_TIMED_DESPAWN = 3

local ITEM_EVENT_ON_USE = 2
local PLAYER_EVENT_ON_LEAVE_COMBAT = 34
local PLAYER_EVENT_ON_RESURRECT = 36

local instanceToCreatureMap = {}

function Map:SetInstanceRezbot(creature)
    if (self:IsDungeon() == false) then
        return
    end

    if (creature) then
        instanceToCreatureMap[tostring(self:GetInstanceId())] = creature:GetGUID()
    else
        instanceToCreatureMap[tostring(self:GetInstanceId())] = nil
    end
end

function Map:GetInstanceRezbot()
    if (self:IsDungeon() == false) then
        return nil
    end

    creatureGUID = instanceToCreatureMap[tostring(self:GetInstanceId())]

    if (creatureGUID == nil) then
        return nil
    end

    return self:GetWorldObject(creatureGUID)
end

function Map:RemoveInstanceRezbot()
    creature = self:GetInstanceRezbot()

    if (creature) then
        creature:DespawnOrUnsummon()
    end

    self:SetInstanceRezbot(nil)
end

function Player:CanSummonRezbot()
    local map = self:GetMap()

    return map:IsDungeon()
end

local function OnUseRezbotSummonItem(event, player, item, target)
    if(player:CanSummonRezbot() == false) then 
        player:SendBroadcastMessage("You can only summon the rezbot in dungeons or raids")
		return false
	end

    local x, y, z = player:GetRelativePoint(0, 0)
    local npc = player:SpawnCreature(NPC_ENTRY, x, y, z, player:GetO(), TEMPSUMMON_TIMED_DESPAWN, DESPAWN_TIME_MS)
    local map = npc:GetMap()

    map:RemoveInstanceRezbot()
    map:SetInstanceRezbot(npc)

    return false
end

local Rezbot = {}
function Rezbot.ResurrectAllIfNecessary(creature, player)
    if (Rezbot.ShouldResurrectSomebody(creature, player)) then
        Rezbot.ResurrectAll(creature, player)
    end
end

function Rezbot.ResurrectAll(creature, player) 
    creature:CastSpell(player, 72429)
end

function Rezbot.ShouldResurrectSomebody(creature, player)
    local map = creature:GetMap()

    if (creature:IsCasting()) then
        return false
    end

    if (map:HasPlayersInCombat()) then
        return false
    end

    if (map:HasDeadPlayers() == false) then
        return false
    end

    return true
end

local function OnPlayerLeaveCombat(event, player)
    -- Delay Rezbot by a second - On Leave Combat might be called before player death state is correctly set
    player:RegisterEvent(function(event, delay, pCall, closurePlayer) 
        local creature = closurePlayer:GetMap():GetInstanceRezbot()

        if (creature == nil) then
            return
        end
    
        Rezbot.ResurrectAllIfNecessary(creature, closurePlayer)
    end, 1000, 1)
end

local function OnPlayerResurrect(event, player)
    local creature = player:GetMap():GetInstanceRezbot()

    if (creature == nil) then
        return
    end

    Buffbot.BuffGroup(creature, player)
end

RegisterItemEvent(ITEM_ENTRY, ITEM_EVENT_ON_USE, OnUseRezbotSummonItem)
RegisterPlayerEvent(PLAYER_EVENT_ON_LEAVE_COMBAT, OnPlayerLeaveCombat)
RegisterPlayerEvent(PLAYER_EVENT_ON_RESURRECT, OnPlayerResurrect)