-- Gives everybody a bear mount on first login
local PLAYER_EVENT_ON_FIRST_LOGIN = 30

local ENABLE = true
local FACTION_ALLIANCE = 0;
local FACTION_HORDE = 1;

local function OnPlayerFirstLogin(event, player)
    if (ENABLE == false) then
        return
    end

    if (player:GetTeam() == FACTION_ALLIANCE) then
        player:AddItem(44225) -- Reins of the Armored Brown Bear (Alliance)
        player:AddItem(25473) -- Swift Blue Gryphon
    else
        player:AddItem(44226) -- Reins of the Armored Brown Bear Horde
        player:AddItem(25477) -- Swift Red Windrider
    end
end

RegisterPlayerEvent(PLAYER_EVENT_ON_FIRST_LOGIN, OnPlayerFirstLogin)