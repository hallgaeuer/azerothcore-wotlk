/*13446
13444
28399*/

DELETE FROM `creature_template` WHERE (`entry` = 9000001);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
    (9000001, 0, 0, 0, 0, 0, 5444, 0, 0, 0, 'Allison', 'Potions and Food', '', 0, 80, 80, 0, 35, 640, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM `npc_vendor` WHERE (`entry` = 9000001);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
                                    (9000001, 0, 13444, 0, 0, 0, 0),
                                    (9000001, 0, 13446, 0, 0, 0, 0),
                                    (9000001, 0, 28399, 0, 0, 0, 0);

DELETE FROM creature WHERE guid = 5000554;
INSERT INTO creature (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild) VALUES (5000554, 9000001, 0, 0, 571, 0, 0, 1, 1, 0, 5817.11, 414.02, 657.587, 1.54968, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null);

/* Make those items free */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0 WHERE (`entry` IN (13444, 13446, 28399));