-- Gives everybody 4 Frostweave Bags and lvl 60 equipment to start with

local PLAYER_EVENT_ON_FIRST_LOGIN = 30
local PLAYER_EVENT_ON_CHAT = 18

local INVENTORY_SLOT_BAG_START = 19

local itemSets = {}

-- Items extracted by opening and pasting the following into the browser console:
-- matches = []; $("a").each(function() {var match = $(this).attr('href').match(/https:\/\/classic.wowhead.com\/item=([0-9]+)\//); if (match) matches.push(match[1]) }); console.log(matches.join(', '));
local items = {}
items[CLASS_DRUID] = {
    -- Resto
    11923, 11928, 13102, 13141, 15061, 13386, 13346, 13208, 12554, 14553, 15060, 13954, 13178, 16058, 12930, 11819,
    -- Feral Tank
    943, 14539, 13091, 15058, 18413, 15064, 18700, 13258, 14502, 11821, 14641, 15855, 11669, 13966, 11811,
    -- Feral Cat
    13167, 8345, 15411, 12927, 13340, 14637, 16710, 15063, 13252, 15062, 12553, 17713, 2246, 13965, 11815
}
items[CLASS_HUNTER] = {
    12940, 12939, 2099, 10548, 13404, 15411, 12927, 13340, 11726, 13211, 15063, 14502, 15062, 13967, 13098, 17713, 13965, 11815
}
items[CLASS_MAGE] = {
    13964, 10796, 13938, 22267, 12103, 11782, 13386, 14152, 13107, 13253, 11662, 13170, 11822, 942, 942, 12930, 13968
}
items[CLASS_PALADIN] = {
    -- Holy 
    11923, 11928, 12633, 13141, 18720, 13386, 13346, 13969, 12554, 18702, 13170, 13954, 16058, 18103, 11819, 12930,
    -- Retri
    12784, 13404, 15411, 12927, 13340, 11726, 12936, 13957, 13959, 14554, 14616, 13098, 12548, 13965, 11815,
    -- Prot
    15806, 12602, 12952, 13091, 14552, 18413, 14624, 12550, 13072, 14620, 11927, 14621, 11669, 22331, 11810, 10779
}
items[CLASS_PRIEST] = {
    -- Holy
    11923, 11928, 16997, 13102, 13141, 13013, 13386, 14154, 13107, 12554, 14143, 11841, 11822, 16058, 13178, 11819, 12930
}
items[CLASS_ROGUE] = {
    12940, 12939, 12651, 13404, 15411, 12927, 13340, 14637, 13120, 15063, 13252, 15062, 12553, 13098, 17713, 13965, 11815
}
items[CLASS_SHAMAN] = {
    -- Totems,
    5175, 5176, 5177, 5178, 
    -- Resto
    11923, 11928, 13216, 13141, 15061, 13386, 13346, 13969, 12554, 14553, 13170, 13954, 16058, 13178, 12930, 11819,
    -- Enh
    12784, 12587, 15411, 12927, 13340, 11726, 13211, 13957, 22232, 15062, 14616, 13098, 17713, 13965, 11815, 12940, 12774, 12798
}
items[CLASS_WARRIOR] = {
    -- Prot
    15806, 12602, 12651, 12952, 13091, 14552, 18413, 14624, 12550, 13072, 14620, 11927, 14621, 11669, 22331, 11810, 10779,
    -- Fury
    12940, 12939, 12651, 13404, 15411, 12927, 13340, 11726, 12936, 15063, 13959, 15062, 12555, 17713, 13098, 13965, 11815
}
items[CLASS_WARLOCK] = {
    13964, 10796, 13396, 22267, 18691, 14112, 13386, 14153, 13107, 13253, 13956, 13170, 18330, 18735, 12545, 13001, 12930, 13968
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

local function EquipPlayerItemSets(player)
    local classItemSets = itemSets[player:GetClass()]

    if (classItemSets == nil) then
        return
    end

    for _, itemSetId in ipairs(classItemSets) do
        for _, itemID in ipairs(GetItemsInSet(itemSetId)) do
            player:AddItem(itemID, 1)
        end
    end
end

local function EquipPlayerItems(player)
    local classItems = items[player:GetClass()]

    if (classItems == nil) then
        return
    end

    for _, itemID in ipairs(classItems) do
        player:AddItem(itemID, 1)
    end
end

local function GiveBags(player)
    for slot = INVENTORY_SLOT_BAG_START, INVENTORY_SLOT_BAG_START + 3, 1 do
        local item = player:AddItem(41599)
        player:EquipItem(item, slot)
    end
end

local function EquipPlayer(player)
    -- Bags
    GiveBags(player)

    EquipPlayerItems(player)
    EquipPlayerItemSets(player)
end

--local function OnPlayerChat(event, player, msg, type, lang) 
    --EquipPlayer(player)
--end

local function OnPlayerFirstLogin(event, player)
    EquipPlayer(player)
end

RegisterPlayerEvent(PLAYER_EVENT_ON_FIRST_LOGIN, OnPlayerFirstLogin)
--RegisterPlayerEvent(PLAYER_EVENT_ON_CHAT, OnPlayerChat)
