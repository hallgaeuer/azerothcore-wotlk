-- Book of Buffing item: Summons Buffbot-NPC on use

local ITEM_ENTRY = 701003
local BUFF_NPC_ENTRY = 9000008
local DESPAWN_TIME_MS = 60000 -- in ms
local COOLDOWN_S = 60 -- in seconds

local TEMPSUMMON_TIMED_DESPAWN = 3
local ITEM_EVENT_ON_USE = 2

local function CanSummonBuffBot(player)
    local map = player:GetMap()

    if (map:IsArena() or map:IsBattleground()) then
        player:SendBroadcastMessage("You cannot summon the buffbot npc in battlegrounds or arena.")

        return false
    end

    local cooldown = player:GetLuaCooldown(ITEM_ENTRY)
    if (cooldown > 0) then
        player:SendBroadcastMessage("There are still "..cooldown.." seconds remaining until you can summon the buffbot npc again.")

        return false
    end

    return true
end

local function OnUse(event, player, item, target)
    local cooldown = player:GetLuaCooldown(ITEM_ENTRY)

    if(CanSummonBuffBot(player) == false) then 
		return false
	end

    player:SetLuaCooldown(COOLDOWN_S, ITEM_ENTRY)
    local x, y, z = player:GetRelativePoint(0, 0)
    local buffNpc = player:SpawnCreature(BUFF_NPC_ENTRY, x, y, z, 0, TEMPSUMMON_TIMED_DESPAWN, DESPAWN_TIME_MS)

    return false
end

RegisterItemEvent(ITEM_ENTRY, ITEM_EVENT_ON_USE, OnUse)