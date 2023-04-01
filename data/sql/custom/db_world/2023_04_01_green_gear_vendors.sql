SET @start = 9000002;
SET @vendorId = @start;

/*------------------------------*/
/* Green plate armor vendor */
/*------------------------------*/
DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Gear Vendor', 'Plate armor', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, InventoryType, entry FROM item_template WHERE ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2 AND AllowableClass IN (-1, 32767, 262143) AND AllowableRace IN (-1, 2147483647) AND class = 4 AND subclass = 4;

/*------------------------------*/
/* Green mail armor vendor */
/*------------------------------*/
SET @vendorId = @vendorId + 1;
DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Gear Vendor', 'Mail armor', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, InventoryType, entry FROM item_template WHERE ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2 AND AllowableClass IN (-1, 32767, 262143) AND AllowableRace = -1  AND class = 4 AND subclass = 3 AND entry NOT IN (42886, 43936);

/*------------------------------*/
/* Green leather armor vendor */
/*------------------------------*/
SET @vendorId = @vendorId + 1;
DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Gear Vendor', 'Leather armor', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, InventoryType, entry FROM item_template WHERE ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2 AND AllowableClass IN (-1, 32767, 262143) AND AllowableRace = -1 AND class = 4 AND subclass = 2;

/*------------------------------*/
/* Green cloth armor vendor */
/*------------------------------*/
SET @vendorId = @vendorId + 1;
DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Gear Vendor', 'Cloth armor and cloaks', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, InventoryType, entry FROM item_template WHERE ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2 AND AllowableClass IN (-1, 32767, 262143) AND AllowableRace = -1 AND class = 4 AND subclass = 1;

/*------------------------------*/
/* Green weapon vendor */
/*------------------------------*/
SET @vendorId = @vendorId + 1;
DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Gear Vendor', 'Weapons', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, InventoryType, entry FROM item_template WHERE ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2 AND InventoryType IN (13,14,15,17,21,22,25,26) AND entry NOT IN (43922);

/*------------------------------*/
/* Neck, Rings, Trinkets vendor */
/*------------------------------*/
SET @vendorId = @vendorId + 1;
DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Gear Vendor', 'Neck, Rings, Trinkets', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, InventoryType, entry FROM item_template WHERE (ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2 AND InventoryType IN (2, 11, 12) AND entry NOT IN (43648)) OR (entry IN (39482));

/*----------------------------------------------*/
/* Remove buy and sellprices of all those items */
/*----------------------------------------------*/
UPDATE item_template SET SellPrice = 1, BuyPrice = 0 WHERE (ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2) OR (entry IN (39482));

/* Spawn in Dalaran Krasus Landing */
DELETE FROM creature WHERE guid BETWEEN 5000567 AND 5000572;
insert into creature (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild)
values
        (5000572, @start + 5, 0, 0, 571, 0, 0, 1, 1, 0, 5787.51, 449.478, 658.782, 0.103625, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000571, @start + 4, 0, 0, 571, 0, 0, 1, 1, 0, 5787.69, 451.196, 658.783, 6.12371, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000570, @start + 3, 0, 0, 571, 0, 0, 1, 1, 0, 5787.99, 452.869, 658.783, 6.07829, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000569, @start + 2, 0, 0, 571, 0, 0, 1, 1, 0, 5788.35, 454.627, 658.783, 6.07829, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000568, @start + 1, 0, 0, 571, 0, 0, 1, 1, 0, 5788.73, 456.448, 658.783, 6.07829, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000567, @start, 0, 0, 571, 0, 0, 1, 1, 0, 5789.11, 458.26, 658.783, 6.07829, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null);