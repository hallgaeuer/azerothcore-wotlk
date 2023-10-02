local wowHead = require ("../libraries/wowHead")

-- Equips the player based on a hash of the wowhead gear planner
-- Usage: .whg <hash>
-- The chat only allows for 255 characters max, so make sure that your gear planner hash does not exceed that limit.
-- Warning! Completely replaces items currently equipped. They are GONE after applying this command.
-- Gems and enchants are present in the hash but are currently not applied. Gems are added to bags, enchants are not used at all yet..
-- Cannot automatically equip items for which requirements are not met (e.g. profession or reputation requirements). Adds those to the bags instead.

local PLAYER_EVENT_ON_COMMAND = 42
local COMMAND_NAME = "whg"

local Handler = {}

function Handler.ApplyGear(player, wowHeadData)
    if (player == nil or wowHeadData == nil or wowHeadData.slots == nil) then
        return
    end

    for slotIndex, slot in pairs(wowHeadData.slots) do
        if (slot.item == nil) then
            goto continue
        end

        local mappedSlotIndex = slotIndex - 1
        local item = Handler.AddItem(player, slot, mappedSlotIndex)

        if (item ~= nil) then
            Handler.AddEnchants(player, slot)
            Handler.AddGems(player, slot)
        end

        ::continue::
    end
end

function Handler.AddItem(player, wowHeadItemSlot, slotIndex)
    local item = nil

    player:SendBroadcastMessage("Equipping and overriding item " ..wowHeadItemSlot.item .. " in slot " .. slotIndex)

    if (not player:CanUseItem(wowHeadItemSlot.item)) then
        player:SendBroadcastMessage("Cannot equip item " ..wowHeadItemSlot.item .. " in slot " .. slotIndex)

        if (not player:HasItem(wowHeadItemSlot.item)) then
            player:SendBroadcastMessage("Adding item to inventory instead")
            item = player:AddItem(wowHeadItemSlot.item, 1)
        end

        return item
    end

    local currentlyEquippedItem = player:GetEquippedItemBySlot(slotIndex)

    if (currentlyEquippedItem) then
        if (currentlyEquippedItem:GetEntry() == wowHeadItemSlot.item) then
            return item
        end

        player:RemoveItem(currentlyEquippedItem, 1)
    end

    Handler.Output(inspect(wowHeadItemSlot))

    local item = player:EquipItem(wowHeadItemSlot.item, slotIndex)

    return item
end

function Handler.AddEnchants(player, wowHeadItemSlot)
    if (wowHeadItemSlot.enchant) then
        -- TODO: Resolve Enchantment ID somehow..
        --item:SetEnchantment(wowHeadItemSlot.enchant, 0)
    end
end

function Handler.AddGems(player, wowHeadItemSlot)
    if (wowHeadItemSlot.gems) then
        -- TODO: Resolve Enchantment ID somehow
        -- Meanwhile, just add gems to player..
        for gemIndex, gemId in pairs(wowHeadItemSlot.gems) do
            player:AddItem(gemId)
            --item:SetEnchantment(gemId, gemIndex + 2)
        end
    end
end

function Handler.Output(message, player)
    if (player == nil) then
        print(message)
    else
        player:SendBroadcastMessage(message)
    end
end

function Handler.PrintUsage(player)
    Handler.Output("Applies the given WoWHead gear planner hash to the player (gives and equip gear). WARNING! Overrides and removes existing equipped gear.", player)
    Handler.Output("Usage: ." .. COMMAND_NAME .. " <player> <hash>", player)
end

function Handler.OnCommand(event, player, command, chatHandler)
    if (command:startswith(COMMAND_NAME) and (player == nil or player:GetGMRank() == 3)) then
        local arguments = command:sub(#COMMAND_NAME + 2, -1)
        arguments = arguments:split(" ")

        if (#arguments == 0) then
            Handler.PrintUsage(player)

            return false
        end

        local targetPlayer = nil
        local hash = nil

        if (#arguments == 2) then
            targetPlayer = GetPlayerByName(arguments[1])
            hash = arguments[2]
        else
            targetPlayer = player
            hash = arguments[1]
        end

        if (targetPlayer == nil) then
            Handler.PrintUsage(player)
            return false
        end

        Handler.Output("Adding and equipping items according to WoWHead data from hash " .. hash, player)

        local wowHeadData = wowHead.parseGearPlannerHash(hash)
        Handler.ApplyGear(targetPlayer, wowHeadData)

        -- Suppress "command doesn't exist message"
        return false
    end
end

RegisterPlayerEvent(PLAYER_EVENT_ON_COMMAND, Handler.OnCommand)