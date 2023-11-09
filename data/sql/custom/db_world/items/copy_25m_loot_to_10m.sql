/* Adds heroic (25m) loot to all non heroic mobs (10m). FIXME: Currently queries are way too wide and also affect heroic and non-heroic dungeons */
UPDATE 
	creature_template 
	INNER JOIN creature_template creature_template_diff_1 ON creature_template.difficulty_entry_1 = creature_template_diff_1.entry
SET creature_template.lootid = creature_template_diff_1.lootid 
WHERE creature_template.difficulty_entry_1 > 0;

/* Copy over Chests */ 
/* Four Horsemen Chest */
UPDATE `gameobject_template` SET `Data1` = 25193 WHERE (`entry` = 181366);

/* Sapphiron should also drop the regular key to the focusing iris */
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29991) AND (`Item` IN (44569));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29991, 44569, 0, 100, 0, 1, 0, 1, 1, '');