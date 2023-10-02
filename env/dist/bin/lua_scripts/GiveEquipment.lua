-- Gives everybody 4 Frostweave Bags and other defined equipment

local PLAYER_EVENT_ON_FIRST_LOGIN = 30
local INVENTORY_SLOT_BAG_START = 19
local GIVE_BAGS = true
local BAG_ITEM_ID = 41599 -- Frostweave Bag

local itemSets = {}
local items = {}

-----------------------------------
-- Items for Level 80 characters
-----------------------------------
-- https://www.wowhead.com/wotlk/news/pre-raid-best-in-slot-gear-guides-for-wrath-classic-329122
items[80] = {};
items[80][CLASS_DRUID] = {
}
items[80][CLASS_HUNTER] = {
}
items[80][CLASS_MAGE] = {
}
items[80][CLASS_PALADIN] = {
    -- Pre Raid BIS:
    -- 41387, 40679,  37635,  44198, 40689,  43500, 44201, 37620, 44183, 42643, 37784, 44063, 42341, 37728, 37401, 40701, 40707
}
items[80][CLASS_PRIEST] = {
}
items[80][CLASS_ROGUE] = {
}
items[80][CLASS_SHAMAN] = {
    -- Shaman Totems
    5175, 5176, 5177, 5178
}
items[80][CLASS_WARRIOR] = {
}
items[80][CLASS_WARLOCK] = {
}

local function GetItemsInSet(equipmentSetID)
    local items = {}
    local query = WorldDBQuery("SELECT entry FROM item_template WHERE itemset = " .. equipmentSetID)
    if query then
        repeat
        local itemID = query:GetUInt32(0)
        table.insert(items, itemID)
        until not query:NextRow()
    end
    return items
end

local function GiveItemSets(player)
    local levelItemSets = itemSets[player:GetLevel()]

    if (levelItemSets == nil) then
        return
    end

    local classItemSets = levelItemSets[player:GetClass()]

    if (classItemSets == nil) then
        return
    end

    for _, itemSetId in ipairs(classItemSets) do
        for _, itemID in ipairs(GetItemsInSet(itemSetId)) do
            player:AddItem(itemID, 1)
        end
    end
end

local function GiveItems(player)
    local levelItems = items[player:GetLevel()]

    if (levelItems == nil) then
        return
    end

    local classItems = levelItems[player:GetClass()]

    if (classItems == nil) then
        return
    end

    for _, itemID in ipairs(classItems) do
        player:AddItem(itemID, 1)
    end
end

local function GiveBags(player)
    if (GIVE_BAGS == false) then
        return
    end

    for slot = INVENTORY_SLOT_BAG_START, INVENTORY_SLOT_BAG_START + 3, 1 do
        -- Frostweave Bags
        local item = player:AddItem(BAG_ITEM_ID)
        player:EquipItem(item, slot)
    end
end

local function EquipPlayer(player)
    -- Bags
    GiveBags(player)
    GiveItems(player)
    GiveItemSets(player)
end

local function OnPlayerFirstLogin(event, player)
    EquipPlayer(player)
end

RegisterPlayerEvent(PLAYER_EVENT_ON_FIRST_LOGIN, OnPlayerFirstLogin)
