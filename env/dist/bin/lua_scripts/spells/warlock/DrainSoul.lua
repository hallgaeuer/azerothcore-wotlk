-- Create additional soul shards from Drain Life
-- The spell itself (43836) can only be modified in spell_dbc to give a maximum of 3 soul shards.
-- So to give higher amounts this script is necessary
-- Unfortunately listening to the spell event of 43836 does not work (event won't be fired), so instead we have to listen to items events.
-- Because of this we have to make sure to avoid infinite loops. Because of this the additional shard amount needs to be at least 2

local PLAYER_EVENT_ON_STORE_NEW_ITEM = 53
local ITEM_ID_SOUL_SHARD = 6265

-- Minimum additional amount: 2, otherwise infinite loops are possible
local ADDITIONAL_SOUL_SHARD_AMOUNT = 9

local function OnStoreNewItem(event, player, item, count)
    if (item:GetEntry() ~= ITEM_ID_SOUL_SHARD) then
        return
    end

    if (count > 1 or ADDITIONAL_SOUL_SHARD_AMOUNT < 2) then
        return
    end

    player:AddItem(ITEM_ID_SOUL_SHARD, ADDITIONAL_SOUL_SHARD_AMOUNT)
end

RegisterPlayerEvent(PLAYER_EVENT_ON_STORE_NEW_ITEM, OnStoreNewItem)