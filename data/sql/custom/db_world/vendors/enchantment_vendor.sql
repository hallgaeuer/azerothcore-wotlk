SET @vendorId = 9000010;

DELETE
FROM creature_template
WHERE entry = @vendorId;
insert into creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1,
                               KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName,
                               gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run,
                               speed_swim, speed_flight, detection_range, scale, `rank`, dmgschool, DamageModifier,
                               BaseAttackTime, RangeAttackTime, BaseVariance, RangeVariance, unit_class, unit_flags,
                               unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class,
                               trainer_race, type, type_flags, lootid, pickpocketloot, skinloot, PetSpellDataId,
                               VehicleId, mingold, maxgold, AIName, MovementType, HoverHeight, HealthModifier,
                               ManaModifier, ArmorModifier, ExperienceModifier, RacialLeader, movementId, RegenHealth,
                               mechanic_immune_mask, spell_school_immune_mask, flags_extra, ScriptName, VerifiedBuild)
values (@vendorId, 0, 0, 0, 0, 0, 2029, 0, 0, 0, 'Enchantment Vendor', 'Enchantments', '', 0, 80, 80, 0, 35, 640, 1, 1,
        1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0,
        0, 1, 0, 0, 0, '', 0);

/* See enchantment_scrolls.sql */
DELETE
FROM npc_vendor
WHERE entry = @vendorId;

INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, 0, entry
FROM item_template
WHERE entry BETWEEN 701010 AND 701134
  AND entry NOT IN (701019, 701021, 701024)
  AND name LIKE "Scroll of Enchant%"
  AND name NOT LIKE "Scroll of Enchant Ring%";

INSERT INTO npc_vendor (entry, slot, item)
SELECT @vendorId, 1, entry
FROM item_template
WHERE
    entry IN (
        /* Weapons: */
        42500,
        41976,
        41167,
        44739,
        41146,
        /* Head Slot: */
        44140,
        44141,
        44139,
        44137,
        44138,
        50370,
        50368,
        50369,
        50367,
        /* Shoulder: */
        50335,
        50336,
        50337,
        50338,
        /* Legs: */
        44963,
        38373,
        38374,
        41602,
        41604
    );
  
