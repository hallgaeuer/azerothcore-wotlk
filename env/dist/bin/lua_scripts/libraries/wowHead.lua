local base64 = require ("base64")
local urlParser = require ("url")

local wowHead = {}

function wowHead.parseGearPlannerHash(hash)
    local slotSize = 128
    local maxSlots = 64


    local result = {
        slots = {}
    }

    local encoded = string.gsub(string.gsub(hash, "-", "+"), "_", "/")
    local decoded = base64.decode(encoded)
    local buffer = {}

    for i = 1, #decoded do
        table.insert(buffer, string.byte(decoded, i))
    end

    local type = table.remove(buffer, 1)

    if type > 6 then
        return result
    end

    if type > 4 then
        result.genderId = table.remove(buffer, 1)
    end

    if type > 0 then
        result.level = table.remove(buffer, 1)
    end

    result.talentHash = ""

    if type > 1 then
        wowHead.readTalents(type, buffer, result)
    end

    wowHead.readSlots(type, buffer, result)

    return result
end

function wowHead.readTalents(type, buffer, result)
    local talentSize = table.remove(buffer, 1)
    local talentBuffer = {}

    for i = 1, talentSize do
        table.insert(talentBuffer, table.remove(buffer, 1))
    end

    local talentArray = {}

    for i = 1, #talentBuffer do
        table.insert(talentArray, bit32.rshift(talentBuffer[i], 4))
        table.insert(talentArray, bit32.band(talentBuffer[i], 15))
    end

    --print(inspect(talentArray))

    local talentCount = 0

    for i = 1, #talentArray do
        if talentArray[i] == 15 then
            result.talentHash = result.talentHash .. "-"
            talentCount = talentCount + 1
        else
            result.talentHash = result.talentHash .. tostring(talentArray[i])
        end

        if talentCount == 3 then
            break
        end
    end

    result.talentHash = string.gsub(result.talentHash, "-+$", "")

    if type >= 4 then
        local customSize = table.remove(buffer, 1)

        if customSize > 0 then
            result.talentHash = result.talentHash .. "_"

            while customSize > 0 do
                result.talentHash = result.talentHash .. string.char(table.remove(buffer, 1))
                customSize = customSize - 1
            end
        end
    end
end

function wowHead.readSlots(type, buffer, result)
    local slotSize = 128
    local maxSlots = 64
    
    while #buffer >= 3 do
        local slotType = table.remove(buffer, 1)
        local gemSize = 0
        local itemId = 0

        if type >= 3 then
            local slotData = table.remove(buffer, 1)
            gemSize = bit32.rshift(bit32.band(slotData, 224), 5)
            itemId = bit32.bor(itemId, bit32.lshift(bit32.band(slotData, 31), 16))
        end

        itemId = bit32.bor(itemId, bit32.lshift(table.remove(buffer, 1), 8))
        itemId = bit32.bor(itemId, table.remove(buffer, 1))

        local isEnchanted = bit32.band(slotType, slotSize) > 0
        local isRandomEnchanted = bit32.band(slotType, maxSlots) > 0

        slotType = bit32.band(bit32.band(slotType, bit32.bnot(slotSize)), bit32.bnot(maxSlots))

        result.slots[slotType] = {
            item = itemId
        }

        if isEnchanted then
            local enchantSize = 0

            if type >= 6 then
                enchantSize = bit32.lshift(table.remove(buffer, 1), 16)
            end

            enchantSize = bit32.bor(enchantSize, bit32.lshift(table.remove(buffer, 1), 8))
            enchantSize = bit32.bor(enchantSize, table.remove(buffer, 1))

            result.slots[slotType].enchant = enchantSize
        end

        if isRandomEnchanted then
            local randomEnchantSize = bit32.lshift(table.remove(buffer, 1), 8)
            randomEnchantSize = bit32.bor(randomEnchantSize, table.remove(buffer, 1))

            if bit32.band(randomEnchantSize, 32768) > 0 then
                randomEnchantSize = randomEnchantSize - 65536
            end

            result.slots[slotType].randomEnchant = randomEnchantSize
        end

        while gemSize > 0 do
            local gemValue = 0
            local gemData = table.remove(buffer, 1)
            local gemIndex = bit32.rshift(bit32.band(gemData, 224), 5)
            gemValue = bit32.bor(gemValue, bit32.lshift(bit32.band(gemData, 31), 16))
            gemValue = bit32.bor(gemValue, bit32.lshift(table.remove(buffer, 1), 8))
            gemValue = bit32.bor(gemValue, table.remove(buffer, 1))
            result.slots[slotType].gems = result.slots[slotType].gems or {}
            result.slots[slotType].gems[gemIndex] = gemValue
            gemSize = gemSize - 1
        end
    end
end

function wowHead.parseUrl(url)
    local result = {
    }

    local parsedUrl = urlParser.parse(url)
    local pathSegments = parsedUrl.path:split("/")

    result["expansion"] = pathSegments[2]
    result["type"] = pathSegments[3]
    result["class"] = pathSegments[4]
    result["race"] = pathSegments[5]
    result["hash"] = pathSegments[6]

    if (result["type"] == "gear-planner") then
        result["data"] = wowHead.parseGearPlannerHash(result["hash"])
    end

    print(inspect(result))

    return result
end

--wowHead.parseGearPlannerHash("BgFQFiUAAwAj8wLwUzUSJQAAElIQMBEzIfAfMDAxczA3MTF4dHkyMXMwbTMxcnFoNDFycWo1MjJqNIFApjUA6jMAoaQgnJgCAKkSgwCTtgDzsIUArKYA7RSGQJIDANYJAJxiII-fhyCp7ADspQCcYogArKkAux2JAJL0APMwigCTDQD5GgsAkUIMAJOYDQCRZA5ArB8Aj58gnJmPAJNgANbakACSGQDo45EAqE0A8vmSIKDQANdfAI-f")

return wowHead