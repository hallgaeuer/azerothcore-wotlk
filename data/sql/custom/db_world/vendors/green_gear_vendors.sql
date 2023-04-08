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
SELECT @vendorId, InventoryType, entry FROM item_template WHERE ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2 AND AllowableClass IN (-1, 32767, 262143) AND AllowableRace IN (-1, 2147483647) AND class = 4 AND subclass = 4 AND entry NOT IN (43938, 43848);

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

/*----------------------------------------------------------------------------*/
/* Remove buy and sellprices of all those items AND require level 80 for them */
/* Also make them not disenchantable                                          */
/*----------------------------------------------------------------------------*/
UPDATE item_template SET SellPrice = 1, BuyPrice = 0, RequiredLevel = 80, DisenchantID = 0 WHERE (ItemLevel = 174 AND RandomSuffix = 0 AND Quality = 2) OR (entry IN (39482));