/* Uncommon Gems */
SET @vendorId = 9000009;

DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Uncommon Gem Vendor', 'Uncommon Gems', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, 0, entry FROM item_template WHERE class = 3 AND Quality = 2 AND ItemLevel >= 70 AND RequiredSkill = 0 AND description LIKE "Matches%" AND name NOT LIKE "Perfect%";

/* Rare Gems */
SET @vendorId = 9000013;

DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Rare Gem Vendor', 'Rare Gems', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, 0, entry FROM item_template WHERE class = 3 AND Quality = 3 AND ItemLevel >= 75 AND RequiredSkill = 0 AND description LIKE "Matches%" AND name NOT LIKE "%Unused%";

/* Epic Gems */
SET @vendorId = 9000014;

DELETE FROM creature_template WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier, BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier, ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth, mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values  (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Epic Gem Vendor', 'Epic Gems', '', 0, 80, 80, 0, 35, 640, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM npc_vendor WHERE entry = @vendorId;
INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, 0, entry FROM item_template WHERE class = 3 AND Quality = 4 AND ItemLevel >= 75 AND RequiredSkill = 0 AND description LIKE "Matches%" AND name NOT LIKE "%Unused%";

/* Prices */
/* Price Rare 50G */
UPDATE item_template SET BuyPrice = 500000 WHERE class = 3 AND Quality = 3 AND ItemLevel >= 75 AND RequiredSkill = 0;
/* Price Epic 150G */
UPDATE item_template SET BuyPrice = 1500000 WHERE class = 3 AND Quality = 4 AND ItemLevel >= 75 AND RequiredSkill = 0;