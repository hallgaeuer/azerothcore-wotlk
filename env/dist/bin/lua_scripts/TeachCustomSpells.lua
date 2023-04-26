local PLAYER_EVENT_ON_LOGIN = 3

local TeachCustomSpells = {}

customSpellsByClass = {
    [CLASS_DRUID] = {
        4987 -- Cleanse
    },
    [CLASS_SHAMAN] = {
        4987 -- Cleanse
    },
    [CLASS_PRIEST] = {
        51886 -- Cleanse Spirit
    },
    [CLASS_PALADIN] = {
        51886 -- Cleanse Spirit
    }
}
function TeachCustomSpells.GetCustomSpellsForPlayer(player)
    return customSpellsByClass[player:GetClass()]
end

function TeachCustomSpells.TeachSpells(player, spellIds)
    if (spellIds == nil) then
        return
    end

    for key, spellId in pairs(spellIds) do
        if (not player:HasSpell(spellId)) then
            player:LearnSpell(spellId)
        end
    end
end

function TeachCustomSpells.OnLogin(event, player)
    TeachCustomSpells.TeachSpells(
        player,
        TeachCustomSpells.GetCustomSpellsForPlayer(player)
    )
end

RegisterPlayerEvent(PLAYER_EVENT_ON_LOGIN, TeachCustomSpells.OnLogin)