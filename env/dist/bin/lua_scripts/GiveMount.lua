-- Gives everybody a bear mount on first login
local PLAYER_EVENT_ON_FIRST_LOGIN = 30

local FACTION_ALLIANCE = 0;
local FACTION_HORDE = 1;

local function OnPlayerFirstLogin(event, player)
    if (player:GetTeam() == FACTION_ALLIANCE) then
        player:AddItem(44225)
    else
        player:AddItem(44226)
    end
end

RegisterPlayerEvent(PLAYER_EVENT_ON_FIRST_LOGIN, OnPlayerFirstLogin)