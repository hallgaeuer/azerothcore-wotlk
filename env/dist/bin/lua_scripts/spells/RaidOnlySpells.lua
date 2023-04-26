-- Allows specific spells to only be cast in raid
-- Used for additional custom spells that are given to players. See TeachCustomSpells.lua

local PLAYER_EVENT_ON_SPELL_CAST = 5

local raidOnlySpells = {
    -- Cleanse (Paladin Spell, given also to druids and shamans)
    [4987] = {
        -- Exception for specific classes. These classes can always use that spell (not only in raids)
        -- Class-ID is the key, value is just a dummy bool
        -- This allows for quicker access
        -- Always allow paladins to use their base spell
        ["exceptClasses"] = {
            [CLASS_PALADIN] = true
        }
    },
    -- Cleanse Spirit (Shaman Spell, given also to priests and paladins)
    [51886] = {
        ["exceptClasses"] = {
            [CLASS_SHAMAN] = true
        }
    }
}

local function OnSpellCast(event, player, spell, skipCheck)
    local spellConfiguration = raidOnlySpells[spell:GetEntry()]

    if (spellConfiguration == nil) then
        return
    end

    if (player:GetMap():IsRaid()) then
        return
    end

    local classExceptions = spellConfiguration["exceptClasses"]
    if (classExceptions and classExceptions[player:GetClass()]) then
        return
    end

    spell:Cancel()
    player:SendBroadcastMessage("This spell can only be used in raids.")
end

RegisterPlayerEvent(PLAYER_EVENT_ON_SPELL_CAST, OnSpellCast)