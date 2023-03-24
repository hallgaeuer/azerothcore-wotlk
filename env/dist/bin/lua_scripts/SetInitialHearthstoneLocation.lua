local PLAYER_EVENT_ON_FIRST_LOGIN = 30

local function OnPlayerFirstLogin(event, player)
    player:SetBindPoint(5810.6, 441.16, 658.8, 571, 4564, BIND_HOME)
end

RegisterPlayerEvent(PLAYER_EVENT_ON_FIRST_LOGIN, OnPlayerFirstLogin)