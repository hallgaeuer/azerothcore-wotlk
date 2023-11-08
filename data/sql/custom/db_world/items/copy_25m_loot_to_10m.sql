/* Adds heroic (25m) loot to all non heroic mobs (10m). FIXME: Currently queries are way too wide and also affect heroic and non-heroic dungeons */
DELETE FROM creature_loot_template WHERE entry IN (
	SELECT Entry FROM creature_template WHERE creature_template.difficulty_entry_1 > 0
);

INSERT INTO creature_loot_template (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment)
SELECT 
	creature_template.entry , 
	creature_loot_template.Item, 
	creature_loot_template.Reference, 
	creature_loot_template.Chance, 
	creature_loot_template.QuestRequired, 
	creature_loot_template.LootMode, 
	creature_loot_template.GroupId, 
	creature_loot_template.MinCount, 
	creature_loot_template.MaxCount, 
	creature_loot_template.Comment 
FROM 
	creature_loot_template 
	INNER JOIN creature_template ON creature_template.difficulty_entry_1 = creature_loot_template.Entry 
WHERE creature_template.difficulty_entry_1 > 0;

UPDATE 
    creature_template
    INNER JOIN creature_template creature_template_diff_1 ON creature_template.difficulty_entry_1 = creature_template_diff_1.entry
SET 
    creature_template.lootid = creature_template_diff_1.lootid;


/* Copy over Chests */ 
/* Four Horsemen Chest */
UPDATE `gameobject_template` SET `Data1` = 25193 WHERE (`entry` = 181366);

/* Sapphiron should also drop the regular key to the focusing iris */
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29991) AND (`Item` IN (44569));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29991, 44569, 0, 100, 0, 1, 0, 1, 1, '');