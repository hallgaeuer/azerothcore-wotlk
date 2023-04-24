/* From https://github.com/ZhengPeiRu21/mod-individual-progression/blob/master/sql/world/base/wotlk_emblems.sql */
/* WotLK Heroic Dungeon bosses should drop Emblems of Heroism */
UPDATE `creature_loot_template`
SET `item` = 40752
WHERE `item` = 47241
  AND `entry` IN (30397, 30398, 30510, 30529, 30530, 30532, 30540, 30748,
                  30774, 30788, 30807, 30810, 31125, 31211, 31212, 31215, 31311, 31349, 31350, 31360, 31362, 31367,
                  31368, 31370, 31381, 31384, 31386, 31456, 31463,
                  31464, 31465, 31469, 31506, 31507, 31508, 31509, 31510, 31511, 31512, 31533, 31536, 31537, 31538,
                  31558, 31559, 31560, 31610, 31611, 31612, 31656,
                  31673, 31679, 31722, 32313, 35490, 36476, 36494, 36497, 36498, 36502, 36538, 36658, 36938, 37613,
                  37627, 37677, 38112, 38113, 38599, 38603);

UPDATE `gameobject_loot_template`
SET `item` = 40752
WHERE `item` = 47241
  AND `entry` IN (24524, 24589, 26260, 27416, 27417);


/* Tier 7 Raid bosses should drop Emblem of Valor */
UPDATE `creature_loot_template`
SET `item` = 40753
WHERE `item` = 47241
  AND `entry` IN (15928, 15931, 15932, 15936, 15952, 15953, 15954, 15956, 15989,
                  15990, 16011, 16028, 16060, 16061, 28860, 29249, 29268, 29278, 29324, 29373, 29417, 29448, 29615,
                  29701, 29718, 29932, 29940, 29955, 29991, 30061);

UPDATE `creature_loot_template`
SET `Reference` = 60001
WHERE `Reference` = 34349
  AND `entry` = 31311;

UPDATE `gameobject_loot_template`
SET `item` = 40753
WHERE `item` = 47241
  AND `entry` IN (25192, 25193, 26094, 26097);

/* Tier 8 Raid bosses should drop Emblem of Conquest */
UPDATE `creature_loot_template`
SET `item` = 45624
WHERE `item` = 47241
  AND `entry` IN (32857, 32867, 32927, 33118, 33186, 33190, 33271, 33288,
                  33293, 33449, 33515, 33692, 33693, 33694, 33724, 33885, 33955, 33993, 33994, 34175);

UPDATE `reference_loot_template`
SET `item` = 45624
WHERE `Entry` = 34349;

UPDATE `gameobject_loot_template`
SET `item` = 45624
WHERE `item` = 47241
  AND `entry` IN (26929, 26946, 26955, 26956, 26959, 26960, 26961, 26962, 26963, 26967,
                  26974, 27030, 27061, 27068, 27073, 27074, 27078, 27079, 27080, 27081, 27085, 27086);
