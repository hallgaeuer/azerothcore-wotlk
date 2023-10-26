TRUNCATE mod_quickbalance_modifier_map;
INSERT INTO mod_quickbalance_modifier_map (Map, Difficulty, DamageModifier, HealthModifier, ManaModifier, ArmorModifier, Comment)
values  (509, 0, 0.7, 0.4, 1, 1, 'AQ20'),
        (531, 0, 0.7, 0.2, 1, 1, 'AQ40'),
        (469, 0, 0.7, 0.2, 1, 1, 'BWL'),
        (409, 0, 0.95, 0.4, 1, 1, 'Molten Core'),
        (533, 0, 1, 0.5, 1, 1, 'Naxxramas 10'),
        (533, 1, 1, 0.25, 1, 1, 'Naxxramas 25'),
        (615, 0, 1, 0.5, 1, 1, 'Obsidian Sanctum 10'),
        (615, 1, 1, 0.25, 1, 1, 'Obsidian Sanctum 25'),
        (309, 0, 0.7, 0.6, 1, 1, 'Zul Gurub'),
        (624, 0, 1, 0.5, 1, 1, 'Vault of Archavon 10'),
        (624, 1, 1, 0.25, 1, 1, 'Vault of Archavon 25'),
        (616, 0, 0.8, 0.5, 1, 1, 'Eye of Eternity 10'),
        (616, 1, 0.8, 0.25, 1, 1, 'Eye of Eternity 25'),
        (603, 0, 1, 0.5, 1, 1, 'Ulduar 10'),
        (603, 1, 1, 0.25, 1, 1, 'Ulduar 25')
;

TRUNCATE mod_quickbalance_modifier_creature;
INSERT INTO mod_quickbalance_modifier_creature (CreatureEntry, Difficulty, DamageModifier, HealthModifier, ManaModifier, ArmorModifier, Comment)
VALUES  
        -- Molten Core (lvl 60)
        (12056, 0, 0.5, 0.3, 1, 1, 'Molten Core - Baron Geddon'),
        (11671, 0, 0.65, 0.35, 1, 1, 'Molten Core - Core Hound (Groups)'),
        (11672, 0, 0.3, 0.3, 1, 1, 'Molten Core - Core Rager (Golemagg)'),
        (12099, 0, 0.3, 0.3, 1, 1, 'Molten Core - Firesworn (Garr)'),
        (11666, 0, 0.6, 0.3, 1, 1, 'Molten Core - Firewalker'),
        (11667, 0, 0.6, 0.3, 1, 1, 'Molten Core - Flameguard'),
        (11661, 0, 0.3, 0.4, 1, 1, 'Molten Core - Flamewaker (Gehennas)'),
        (11664, 0, 0.3, 0.7, 1, 1, 'Molten Core - Flamewaker Elite (Majordomo)'),
        (11663, 0, 0.35, 0.7, 1, 1, 'Molten Core - Flamewaker Healer (Majordomo)'),
        (11662, 0, 0.3, 0.6, 1, 1, 'Molten Core - Flamewaker Priest (Sulfuron)'),
        (12259, 0, 0.6, 0.5, 1, 1, 'Molten Core - Gehennas'),
        (11988, 0, 0.8, 0.3, 1, 1, 'Molten Core - Golemagg'),
        (12076, 0, 0.7, 0.3, 1, 1, 'Molten Core - Lava Elemental'),
        (11982, 0, 0.75, 0.3, 1, 1, 'Molten Core - Magmadar'),
        (11502, 0, 0.55, 0.2, 1, 1, 'Molten Core - Ragnaros'),
        (12143, 0, 0.5, 0.5, 1, 1, 'Molten Core - Son of Flame (Ragnaros)'),
        -- Naxxramas 10
        (15956, 0, 0.85, 0.5, 1, 1, 'Naxxramas 10 - Anub Rekhan'),
        (16573, 0, 0.7, 0.5, 1, 1, 'Naxxramas 10 - Anub Rekhan - Crypt Guard'),
        (16698, 0, 0.8, 0.5, 1, 1, 'Naxxramas 10 - Anub Rekhan - Scarab'),
        (16028, 0, 1, 0.5, 1, 1, 'Naxxramas 10 - Patchwerk'),
        (15952, 0, 0.7, 0.45, 1, 1, 'Naxxramas 10 - Maexxna'),
        (15953, 0, 0.9, 0.5, 1, 1, 'Naxxramas 10 - Faerlina'),
        (16060, 0, 0.85, 0.5, 1, 1, 'Naxxramas 10 - Gothik'),
        (15954, 0, 0.75, 0.4, 1.0, 1.0, 'Naxxramas 10 - Noth'),
        (16984, 0, 0.85, 0.4, 1.0, 1.0, 'Naxxramas 10 - Noth Warrior'),
        (16983, 0, 0.85, 0.4, 1.0, 1.0, 'Naxxramas 10 - Noth Champion'),
        (16981, 0, 0.85, 0.4, 1.0, 1.0, 'Naxxramas 10 - Noth Guardian'),
        (16506, 0, 0.25, 1, 1, 1, 'Naxxramas 10 - Faerlina Worshipper'),
        (16061, 0, 1, 0.4, 1, 1, 'Naxxramas 10 - Instructor Razuvious'),
        (16803, 0, 1, 1, 1, 1, 'Naxxramas 10 - Instructor Razuvious Understudy'),
        (15930, 0, 0.05, 0.25, 1, 1, 'Naxxramas 10 - Feugen'),
        (15929, 0, 0.05, 0.25, 1, 1, 'Naxxramas 10 - Stalagg'),
        (15928, 0, 0.8, 0.35, 1, 1, 'Naxxramas 10 - Thaddius'),
        (15936, 0, 0.65, 0.5, 1, 1, 'Naxxramas 10 - Heigan'),
        (30549, 0, 0.35, 0.5, 1, 1, 'Naxxramas 10 - Four Horsemen - Baron Rivendare'),
        (16065, 0, 0.5, 0.5, 1, 1, 'Naxxramas 10 - Four Horsemen - Lady Blaumeux'),
        (16063, 0, 0.5, 0.5, 1, 1, 'Naxxramas 10 - Four Horsemen - Sir Zeliak'),
        (16064, 0, 0.35, 0.5, 1, 1, 'Naxxramas 10 - Four Horsemen - Thane'),
        (15932, 0, 0.75, 0.4, 1, 1, 'Naxxramas 10 - Gluth'),
        (16360, 0, 0.5, 0.4, 1, 1, 'Naxxramas 10 - Gluth Zombie'),
        (15931, 0, 0.75, 0.5, 1, 1, 'Naxxramas 10 - Grobbulus'),
        (16290, 0, 0.4, 0.25, 1, 1, 'Naxxramas 10 - Grobbulus Fallout Slime'),
        (15990, 0, 0.75, 0.5, 1, 1, 'Naxxramas 10 - Kel Thuzad'),
        (16441, 0, 0.7, 0.5, 1, 1, 'Naxxramas 10 - Kel Thuzad - Guardian of Icecrown'),
        (16011, 0, 0.75, 0.3, 1, 1, 'Naxxramas 10 - Loatheb'),
        (15989, 0, 0.75, 0.5, 1, 1, 'Naxxramas 10 - Sapphiron'),
        -- Naxxramas 25
        (16803, 1, 1, 1, 1, 1, 'Naxxramas 25 - Instructor Razuvious Understudy'),
        -- Obsidian Sanctum 10
        (31219, 0, 0.25, 0.25, 1, 1, 'Obsidian Sanctum 10 - Acolyte of Vesperon'),
        (30688, 0, 0.25, 0.25, 1, 1, 'Obsidian Sanctum 10 - Disciple of Shadron'),
        (28860, 0, 0.8, 0.5, 1, 1, 'Obsidian Sanctum 10 - Sartharion'),
        -- Eye of Eternity 10
        (28859, 0, 0.7, 0.5, 1, 1, 'Eye of Eternity 10 - Malygos'),
        (30249, 0, 0.4, 0.35, 1, 1, 'Eye of Eternity 10 - Scion of Eternity'),
        (30245, 0, 0.6, 0.35, 1, 1, 'Eye of Eternity 10 - Nexus Lord'),
        (30161, 0, 1, 1, 1, 1, 'Eye of Eternity 10 - Wyrmrest Skytalon (Phase 3 Friendly)'),
        -- Eye of Eternity 25
        (30161, 1, 1, 1, 1, 1, 'Eye of Eternity 25 - Wyrmrest Skytalon (Phase 3 Friendly)'),
        -- Ulduar 10
        (33118, 0, 0.9, 0.5, 1, 1, 'Ulduar 10 - Ignis'),
        (33121, 0, 0.5, 0.5, 1, 1, 'Ulduar 10 - Ignis - Iron Construct')
;

/* Auto generate missing 25 man versions */
INSERT IGNORE INTO mod_quickbalance_modifier_creature (CreatureEntry, Difficulty, DamageModifier, HealthModifier, ManaModifier, ArmorModifier, Comment)
SELECT 
    CreatureEntry, "1", DamageModifier, HealthModifier * 2 / 4, ManaModifier, ArmorModifier, REPLACE(Comment, " 10 ", " 25 ")
FROM 
    mod_quickbalance_modifier_creature 
WHERE 
    Difficulty = 0
    AND
    Comment LIKE "% 10 %";


TRUNCATE mod_quickbalance_modifier_spell;
INSERT INTO mod_quickbalance_modifier_spell (Spell, DamageModifier, Comment)
values  (27808, 0.5, 'Naxxramas 10/25 - Kel Thuzad - Frost Blast'),
        (28478, 0.65, 'Naxxramas 10 - Kel Thuzad - Frost Bolt'),
        (55802, 0.65, 'Naxxramas 25 - Kel Thuzad - Frost Bolt'),
        (28836, 0.1, 'Naxxramas - Four Horseman - Mark Damage'),
        (57874, 0.25, 'Obsidian Sanctum 10 - Twilight Shift')
;

/********************************************************/
/* Creature Adjustments */
/********************************************************/
/* Reduce movement speed of Gluth zombie by 70% */
UPDATE `creature_template` SET `speed_run` = 0.255 WHERE (`entry` = 16360);

/********************************************************/
/* Deactivate Creatures */
/********************************************************/
UPDATE creature SET phaseMask = 16384 WHERE guid IN(
    56606, -- Flamewaker Protector
    56685, -- Core Rager
    56681, -- Flamewaker Priest
    56682 -- Flamewaker Priest
);

/********************************************************/
/* Remove Summons */
/********************************************************/
/* Majordomo */
DELETE FROM creature_summon_groups WHERE summonerId = 12018;
insert into creature_summon_groups (summonerId, summonerType, groupId, entry, position_x, position_y, position_z, orientation, summonType, summonTime, Comment)
values
    (12018, 0, 1, 11663, 766.734, -1183.16, -119.292, 2.9889, 7, 10000, ''),
    (12018, 0, 1, 11663, 761.652, -1164.3, -119.533, 3.3919, 7, 10000, ''),
    (12018, 0, 1, 11664, 757.246, -1189.79, -118.633, 2.5333, 7, 10000, ''),
    (12018, 0, 1, 11664, 752.349, -1159.19, -119.261, 3.6032, 7, 10000, '');

/* Majordomo Original-Summons */
/*
DELETE FROM creature_summon_groups WHERE summonerId = 12018;
insert into creature_summon_groups (summonerId, summonerType, groupId, entry, position_x, position_y, position_z, orientation, summonType, summonTime, Comment)
values  (12018, 0, 1, 11663, 757.364, -1198.31, -118.652, 2.3095, 7, 10000, ''),
        (12018, 0, 1, 11663, 766.734, -1183.16, -119.292, 2.9889, 7, 10000, ''),
        (12018, 0, 1, 11663, 761.652, -1164.3, -119.533, 3.3919, 7, 10000, ''),
        (12018, 0, 1, 11663, 747.323, -1149.24, -120.06, 3.6629, 7, 10000, ''),
        (12018, 0, 1, 11664, 745.916, -1199.35, -118.119, 1.8932, 7, 10000, ''),
        (12018, 0, 1, 11664, 757.246, -1189.79, -118.633, 2.5333, 7, 10000, ''),
        (12018, 0, 1, 11664, 752.349, -1159.19, -119.261, 3.6032, 7, 10000, ''),
        (12018, 0, 1, 11664, 738.015, -1152.22, -119.512, 4.0792, 7, 10000, '');
*/

/********************************************************/
/* Spell Adjustments */
/********************************************************/
/* Reduce dmg of Magmadar Conflagration (Fire on floor) */
INSERT IGNORE INTO spell_dbc (`ID`,`Category`,`DispelType`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`ShapeshiftMask`,`unk_320_2`,`ShapeshiftExclude`,`unk_320_3`,`Targets`,`TargetCreatureType`,`RequiresSpellFocus`,`FacingCasterFlags`,`CasterAuraState`,`TargetAuraState`,`ExcludeCasterAuraState`,`ExcludeTargetAuraState`,`CasterAuraSpell`,`TargetAuraSpell`,`ExcludeCasterAuraSpell`,`ExcludeTargetAuraSpell`,`CastingTimeIndex`,`RecoveryTime`,`CategoryRecoveryTime`,`InterruptFlags`,`AuraInterruptFlags`,`ChannelInterruptFlags`,`ProcTypeMask`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`PowerType`,`ManaCost`,`ManaCostPerLevel`,`ManaPerSecond`,`ManaPerSecondPerLevel`,`RangeIndex`,`Speed`,`ModalNextSpell`,`CumulativeAura`,`Totem_1`,`Totem_2`,`Reagent_1`,`Reagent_2`,`Reagent_3`,`Reagent_4`,`Reagent_5`,`Reagent_6`,`Reagent_7`,`Reagent_8`,`ReagentCount_1`,`ReagentCount_2`,`ReagentCount_3`,`ReagentCount_4`,`ReagentCount_5`,`ReagentCount_6`,`ReagentCount_7`,`ReagentCount_8`,`EquippedItemClass`,`EquippedItemSubclass`,`EquippedItemInvTypes`,`Effect_1`,`Effect_2`,`Effect_3`,`EffectDieSides_1`,`EffectDieSides_2`,`EffectDieSides_3`,`EffectRealPointsPerLevel_1`,`EffectRealPointsPerLevel_2`,`EffectRealPointsPerLevel_3`,`EffectBasePoints_1`,`EffectBasePoints_2`,`EffectBasePoints_3`,`EffectMechanic_1`,`EffectMechanic_2`,`EffectMechanic_3`,`ImplicitTargetA_1`,`ImplicitTargetA_2`,`ImplicitTargetA_3`,`ImplicitTargetB_1`,`ImplicitTargetB_2`,`ImplicitTargetB_3`,`EffectRadiusIndex_1`,`EffectRadiusIndex_2`,`EffectRadiusIndex_3`,`EffectAura_1`,`EffectAura_2`,`EffectAura_3`,`EffectAuraPeriod_1`,`EffectAuraPeriod_2`,`EffectAuraPeriod_3`,`EffectMultipleValue_1`,`EffectMultipleValue_2`,`EffectMultipleValue_3`,`EffectChainTargets_1`,`EffectChainTargets_2`,`EffectChainTargets_3`,`EffectItemType_1`,`EffectItemType_2`,`EffectItemType_3`,`EffectMiscValue_1`,`EffectMiscValue_2`,`EffectMiscValue_3`,`EffectMiscValueB_1`,`EffectMiscValueB_2`,`EffectMiscValueB_3`,`EffectTriggerSpell_1`,`EffectTriggerSpell_2`,`EffectTriggerSpell_3`,`EffectPointsPerCombo_1`,`EffectPointsPerCombo_2`,`EffectPointsPerCombo_3`,`EffectSpellClassMaskA_1`,`EffectSpellClassMaskA_2`,`EffectSpellClassMaskA_3`,`EffectSpellClassMaskB_1`,`EffectSpellClassMaskB_2`,`EffectSpellClassMaskB_3`,`EffectSpellClassMaskC_1`,`EffectSpellClassMaskC_2`,`EffectSpellClassMaskC_3`,`SpellVisualID_1`,`SpellVisualID_2`,`SpellIconID`,`ActiveIconID`,`SpellPriority`,`Name_Lang_enUS`,`Name_Lang_enGB`,`Name_Lang_koKR`,`Name_Lang_frFR`,`Name_Lang_deDE`,`Name_Lang_enCN`,`Name_Lang_zhCN`,`Name_Lang_enTW`,`Name_Lang_zhTW`,`Name_Lang_esES`,`Name_Lang_esMX`,`Name_Lang_ruRU`,`Name_Lang_ptPT`,`Name_Lang_ptBR`,`Name_Lang_itIT`,`Name_Lang_Unk`,`Name_Lang_Mask`,`NameSubtext_Lang_enUS`,`NameSubtext_Lang_enGB`,`NameSubtext_Lang_koKR`,`NameSubtext_Lang_frFR`,`NameSubtext_Lang_deDE`,`NameSubtext_Lang_enCN`,`NameSubtext_Lang_zhCN`,`NameSubtext_Lang_enTW`,`NameSubtext_Lang_zhTW`,`NameSubtext_Lang_esES`,`NameSubtext_Lang_esMX`,`NameSubtext_Lang_ruRU`,`NameSubtext_Lang_ptPT`,`NameSubtext_Lang_ptBR`,`NameSubtext_Lang_itIT`,`NameSubtext_Lang_Unk`,`NameSubtext_Lang_Mask`,`Description_Lang_enUS`,`Description_Lang_enGB`,`Description_Lang_koKR`,`Description_Lang_frFR`,`Description_Lang_deDE`,`Description_Lang_enCN`,`Description_Lang_zhCN`,`Description_Lang_enTW`,`Description_Lang_zhTW`,`Description_Lang_esES`,`Description_Lang_esMX`,`Description_Lang_ruRU`,`Description_Lang_ptPT`,`Description_Lang_ptBR`,`Description_Lang_itIT`,`Description_Lang_Unk`,`Description_Lang_Mask`,`AuraDescription_Lang_enUS`,`AuraDescription_Lang_enGB`,`AuraDescription_Lang_koKR`,`AuraDescription_Lang_frFR`,`AuraDescription_Lang_deDE`,`AuraDescription_Lang_enCN`,`AuraDescription_Lang_zhCN`,`AuraDescription_Lang_enTW`,`AuraDescription_Lang_zhTW`,`AuraDescription_Lang_esES`,`AuraDescription_Lang_esMX`,`AuraDescription_Lang_ruRU`,`AuraDescription_Lang_ptPT`,`AuraDescription_Lang_ptBR`,`AuraDescription_Lang_itIT`,`AuraDescription_Lang_Unk`,`AuraDescription_Lang_Mask`,`ManaCostPct`,`StartRecoveryCategory`,`StartRecoveryTime`,`MaxTargetLevel`,`SpellClassSet`,`SpellClassMask_1`,`SpellClassMask_2`,`SpellClassMask_3`,`MaxTargets`,`DefenseType`,`PreventionType`,`StanceBarOrder`,`EffectChainAmplitude_1`,`EffectChainAmplitude_2`,`EffectChainAmplitude_3`,`MinFactionID`,`MinReputation`,`RequiredAuraVision`,`RequiredTotemCategoryID_1`,`RequiredTotemCategoryID_2`,`RequiredAreasID`,`SchoolMask`,`RuneCostID`,`SpellMissileID`,`PowerDisplayID`,`EffectBonusMultiplier_1`,`EffectBonusMultiplier_2`,`EffectBonusMultiplier_3`,`SpellDescriptionVariableID`,`SpellDifficultyID`)
VALUES (19428,0,0,0,0,136,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,1,1,31,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,6,0,0,1,0,0,0,0,0,399,0,0,0,0,0,22,0,0,15,0,0,8,0,0,3,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4326,0,937,0,0,'Conflagration','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712188,'$o1 Fire damage inflicted over $d to nearby enemies.','','','','','','','','','','','','','','','',16712190,'$o1 Fire damage inflicted over $d.','','','','','','','','','','','','','','','',16712190,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,0,0,0,0,0,0,4,0,0,0,0,1,1,0,0);
UPDATE spell_dbc SET EffectBasePoints_1 = 100 WHERE ID = 19428;

/* Reduce attack speed of Magmadar Frenzy */
INSERT IGNORE INTO spell_dbc (`ID`,`Category`,`DispelType`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`ShapeshiftMask`,`unk_320_2`,`ShapeshiftExclude`,`unk_320_3`,`Targets`,`TargetCreatureType`,`RequiresSpellFocus`,`FacingCasterFlags`,`CasterAuraState`,`TargetAuraState`,`ExcludeCasterAuraState`,`ExcludeTargetAuraState`,`CasterAuraSpell`,`TargetAuraSpell`,`ExcludeCasterAuraSpell`,`ExcludeTargetAuraSpell`,`CastingTimeIndex`,`RecoveryTime`,`CategoryRecoveryTime`,`InterruptFlags`,`AuraInterruptFlags`,`ChannelInterruptFlags`,`ProcTypeMask`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`PowerType`,`ManaCost`,`ManaCostPerLevel`,`ManaPerSecond`,`ManaPerSecondPerLevel`,`RangeIndex`,`Speed`,`ModalNextSpell`,`CumulativeAura`,`Totem_1`,`Totem_2`,`Reagent_1`,`Reagent_2`,`Reagent_3`,`Reagent_4`,`Reagent_5`,`Reagent_6`,`Reagent_7`,`Reagent_8`,`ReagentCount_1`,`ReagentCount_2`,`ReagentCount_3`,`ReagentCount_4`,`ReagentCount_5`,`ReagentCount_6`,`ReagentCount_7`,`ReagentCount_8`,`EquippedItemClass`,`EquippedItemSubclass`,`EquippedItemInvTypes`,`Effect_1`,`Effect_2`,`Effect_3`,`EffectDieSides_1`,`EffectDieSides_2`,`EffectDieSides_3`,`EffectRealPointsPerLevel_1`,`EffectRealPointsPerLevel_2`,`EffectRealPointsPerLevel_3`,`EffectBasePoints_1`,`EffectBasePoints_2`,`EffectBasePoints_3`,`EffectMechanic_1`,`EffectMechanic_2`,`EffectMechanic_3`,`ImplicitTargetA_1`,`ImplicitTargetA_2`,`ImplicitTargetA_3`,`ImplicitTargetB_1`,`ImplicitTargetB_2`,`ImplicitTargetB_3`,`EffectRadiusIndex_1`,`EffectRadiusIndex_2`,`EffectRadiusIndex_3`,`EffectAura_1`,`EffectAura_2`,`EffectAura_3`,`EffectAuraPeriod_1`,`EffectAuraPeriod_2`,`EffectAuraPeriod_3`,`EffectMultipleValue_1`,`EffectMultipleValue_2`,`EffectMultipleValue_3`,`EffectChainTargets_1`,`EffectChainTargets_2`,`EffectChainTargets_3`,`EffectItemType_1`,`EffectItemType_2`,`EffectItemType_3`,`EffectMiscValue_1`,`EffectMiscValue_2`,`EffectMiscValue_3`,`EffectMiscValueB_1`,`EffectMiscValueB_2`,`EffectMiscValueB_3`,`EffectTriggerSpell_1`,`EffectTriggerSpell_2`,`EffectTriggerSpell_3`,`EffectPointsPerCombo_1`,`EffectPointsPerCombo_2`,`EffectPointsPerCombo_3`,`EffectSpellClassMaskA_1`,`EffectSpellClassMaskA_2`,`EffectSpellClassMaskA_3`,`EffectSpellClassMaskB_1`,`EffectSpellClassMaskB_2`,`EffectSpellClassMaskB_3`,`EffectSpellClassMaskC_1`,`EffectSpellClassMaskC_2`,`EffectSpellClassMaskC_3`,`SpellVisualID_1`,`SpellVisualID_2`,`SpellIconID`,`ActiveIconID`,`SpellPriority`,`Name_Lang_enUS`,`Name_Lang_enGB`,`Name_Lang_koKR`,`Name_Lang_frFR`,`Name_Lang_deDE`,`Name_Lang_enCN`,`Name_Lang_zhCN`,`Name_Lang_enTW`,`Name_Lang_zhTW`,`Name_Lang_esES`,`Name_Lang_esMX`,`Name_Lang_ruRU`,`Name_Lang_ptPT`,`Name_Lang_ptBR`,`Name_Lang_itIT`,`Name_Lang_Unk`,`Name_Lang_Mask`,`NameSubtext_Lang_enUS`,`NameSubtext_Lang_enGB`,`NameSubtext_Lang_koKR`,`NameSubtext_Lang_frFR`,`NameSubtext_Lang_deDE`,`NameSubtext_Lang_enCN`,`NameSubtext_Lang_zhCN`,`NameSubtext_Lang_enTW`,`NameSubtext_Lang_zhTW`,`NameSubtext_Lang_esES`,`NameSubtext_Lang_esMX`,`NameSubtext_Lang_ruRU`,`NameSubtext_Lang_ptPT`,`NameSubtext_Lang_ptBR`,`NameSubtext_Lang_itIT`,`NameSubtext_Lang_Unk`,`NameSubtext_Lang_Mask`,`Description_Lang_enUS`,`Description_Lang_enGB`,`Description_Lang_koKR`,`Description_Lang_frFR`,`Description_Lang_deDE`,`Description_Lang_enCN`,`Description_Lang_zhCN`,`Description_Lang_enTW`,`Description_Lang_zhTW`,`Description_Lang_esES`,`Description_Lang_esMX`,`Description_Lang_ruRU`,`Description_Lang_ptPT`,`Description_Lang_ptBR`,`Description_Lang_itIT`,`Description_Lang_Unk`,`Description_Lang_Mask`,`AuraDescription_Lang_enUS`,`AuraDescription_Lang_enGB`,`AuraDescription_Lang_koKR`,`AuraDescription_Lang_frFR`,`AuraDescription_Lang_deDE`,`AuraDescription_Lang_enCN`,`AuraDescription_Lang_zhCN`,`AuraDescription_Lang_enTW`,`AuraDescription_Lang_zhTW`,`AuraDescription_Lang_esES`,`AuraDescription_Lang_esMX`,`AuraDescription_Lang_ruRU`,`AuraDescription_Lang_ptPT`,`AuraDescription_Lang_ptBR`,`AuraDescription_Lang_itIT`,`AuraDescription_Lang_Unk`,`AuraDescription_Lang_Mask`,`ManaCostPct`,`StartRecoveryCategory`,`StartRecoveryTime`,`MaxTargetLevel`,`SpellClassSet`,`SpellClassMask_1`,`SpellClassMask_2`,`SpellClassMask_3`,`MaxTargets`,`DefenseType`,`PreventionType`,`StanceBarOrder`,`EffectChainAmplitude_1`,`EffectChainAmplitude_2`,`EffectChainAmplitude_3`,`MinFactionID`,`MinReputation`,`RequiredAuraVision`,`RequiredTotemCategoryID_1`,`RequiredTotemCategoryID_2`,`RequiredAreasID`,`SchoolMask`,`RuneCostID`,`SpellMissileID`,`PowerDisplayID`,`EffectBonusMultiplier_1`,`EffectBonusMultiplier_2`,`EffectBonusMultiplier_3`,`SpellDescriptionVariableID`,`SpellDifficultyID`)
VALUES (19451,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,0,0,31,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,6,6,6,1,1,0,0,0,0,149,19,0,0,0,0,1,1,1,0,0,0,0,0,0,138,61,23,0,0,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,19272,0,0,0,0,0,0,0,0,0,0,0,0,5301,0,957,0,0,'Enrage','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712188,'Decreases the time between your attacks by $s1\% for $d.','','','','','','','','','','','','','','','',16712190,'Attack speed increased by $s1\%.','','','','','','','','','','','','','','','',16712190,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,0,0,0,0,0,0,1,0,0,0,1,1,1,0,0);
UPDATE spell_dbc SET EffectBasePoints_1 = 49 WHERE ID = 19451;

/* Reduce damage of Majordomo lava */
/* Original extracted DBC Data */
INSERT IGNORE INTO spell_dbc (`ID`,`Category`,`DispelType`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`ShapeshiftMask`,`unk_320_2`,`ShapeshiftExclude`,`unk_320_3`,`Targets`,`TargetCreatureType`,`RequiresSpellFocus`,`FacingCasterFlags`,`CasterAuraState`,`TargetAuraState`,`ExcludeCasterAuraState`,`ExcludeTargetAuraState`,`CasterAuraSpell`,`TargetAuraSpell`,`ExcludeCasterAuraSpell`,`ExcludeTargetAuraSpell`,`CastingTimeIndex`,`RecoveryTime`,`CategoryRecoveryTime`,`InterruptFlags`,`AuraInterruptFlags`,`ChannelInterruptFlags`,`ProcTypeMask`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`PowerType`,`ManaCost`,`ManaCostPerLevel`,`ManaPerSecond`,`ManaPerSecondPerLevel`,`RangeIndex`,`Speed`,`ModalNextSpell`,`CumulativeAura`,`Totem_1`,`Totem_2`,`Reagent_1`,`Reagent_2`,`Reagent_3`,`Reagent_4`,`Reagent_5`,`Reagent_6`,`Reagent_7`,`Reagent_8`,`ReagentCount_1`,`ReagentCount_2`,`ReagentCount_3`,`ReagentCount_4`,`ReagentCount_5`,`ReagentCount_6`,`ReagentCount_7`,`ReagentCount_8`,`EquippedItemClass`,`EquippedItemSubclass`,`EquippedItemInvTypes`,`Effect_1`,`Effect_2`,`Effect_3`,`EffectDieSides_1`,`EffectDieSides_2`,`EffectDieSides_3`,`EffectRealPointsPerLevel_1`,`EffectRealPointsPerLevel_2`,`EffectRealPointsPerLevel_3`,`EffectBasePoints_1`,`EffectBasePoints_2`,`EffectBasePoints_3`,`EffectMechanic_1`,`EffectMechanic_2`,`EffectMechanic_3`,`ImplicitTargetA_1`,`ImplicitTargetA_2`,`ImplicitTargetA_3`,`ImplicitTargetB_1`,`ImplicitTargetB_2`,`ImplicitTargetB_3`,`EffectRadiusIndex_1`,`EffectRadiusIndex_2`,`EffectRadiusIndex_3`,`EffectAura_1`,`EffectAura_2`,`EffectAura_3`,`EffectAuraPeriod_1`,`EffectAuraPeriod_2`,`EffectAuraPeriod_3`,`EffectMultipleValue_1`,`EffectMultipleValue_2`,`EffectMultipleValue_3`,`EffectChainTargets_1`,`EffectChainTargets_2`,`EffectChainTargets_3`,`EffectItemType_1`,`EffectItemType_2`,`EffectItemType_3`,`EffectMiscValue_1`,`EffectMiscValue_2`,`EffectMiscValue_3`,`EffectMiscValueB_1`,`EffectMiscValueB_2`,`EffectMiscValueB_3`,`EffectTriggerSpell_1`,`EffectTriggerSpell_2`,`EffectTriggerSpell_3`,`EffectPointsPerCombo_1`,`EffectPointsPerCombo_2`,`EffectPointsPerCombo_3`,`EffectSpellClassMaskA_1`,`EffectSpellClassMaskA_2`,`EffectSpellClassMaskA_3`,`EffectSpellClassMaskB_1`,`EffectSpellClassMaskB_2`,`EffectSpellClassMaskB_3`,`EffectSpellClassMaskC_1`,`EffectSpellClassMaskC_2`,`EffectSpellClassMaskC_3`,`SpellVisualID_1`,`SpellVisualID_2`,`SpellIconID`,`ActiveIconID`,`SpellPriority`,`Name_Lang_enUS`,`Name_Lang_enGB`,`Name_Lang_koKR`,`Name_Lang_frFR`,`Name_Lang_deDE`,`Name_Lang_enCN`,`Name_Lang_zhCN`,`Name_Lang_enTW`,`Name_Lang_zhTW`,`Name_Lang_esES`,`Name_Lang_esMX`,`Name_Lang_ruRU`,`Name_Lang_ptPT`,`Name_Lang_ptBR`,`Name_Lang_itIT`,`Name_Lang_Unk`,`Name_Lang_Mask`,`NameSubtext_Lang_enUS`,`NameSubtext_Lang_enGB`,`NameSubtext_Lang_koKR`,`NameSubtext_Lang_frFR`,`NameSubtext_Lang_deDE`,`NameSubtext_Lang_enCN`,`NameSubtext_Lang_zhCN`,`NameSubtext_Lang_enTW`,`NameSubtext_Lang_zhTW`,`NameSubtext_Lang_esES`,`NameSubtext_Lang_esMX`,`NameSubtext_Lang_ruRU`,`NameSubtext_Lang_ptPT`,`NameSubtext_Lang_ptBR`,`NameSubtext_Lang_itIT`,`NameSubtext_Lang_Unk`,`NameSubtext_Lang_Mask`,`Description_Lang_enUS`,`Description_Lang_enGB`,`Description_Lang_koKR`,`Description_Lang_frFR`,`Description_Lang_deDE`,`Description_Lang_enCN`,`Description_Lang_zhCN`,`Description_Lang_enTW`,`Description_Lang_zhTW`,`Description_Lang_esES`,`Description_Lang_esMX`,`Description_Lang_ruRU`,`Description_Lang_ptPT`,`Description_Lang_ptBR`,`Description_Lang_itIT`,`Description_Lang_Unk`,`Description_Lang_Mask`,`AuraDescription_Lang_enUS`,`AuraDescription_Lang_enGB`,`AuraDescription_Lang_koKR`,`AuraDescription_Lang_frFR`,`AuraDescription_Lang_deDE`,`AuraDescription_Lang_enCN`,`AuraDescription_Lang_zhCN`,`AuraDescription_Lang_enTW`,`AuraDescription_Lang_zhTW`,`AuraDescription_Lang_esES`,`AuraDescription_Lang_esMX`,`AuraDescription_Lang_ruRU`,`AuraDescription_Lang_ptPT`,`AuraDescription_Lang_ptBR`,`AuraDescription_Lang_itIT`,`AuraDescription_Lang_Unk`,`AuraDescription_Lang_Mask`,`ManaCostPct`,`StartRecoveryCategory`,`StartRecoveryTime`,`MaxTargetLevel`,`SpellClassSet`,`SpellClassMask_1`,`SpellClassMask_2`,`SpellClassMask_3`,`MaxTargets`,`DefenseType`,`PreventionType`,`StanceBarOrder`,`EffectChainAmplitude_1`,`EffectChainAmplitude_2`,`EffectChainAmplitude_3`,`MinFactionID`,`MinReputation`,`RequiredAuraVision`,`RequiredTotemCategoryID_1`,`RequiredTotemCategoryID_2`,`RequiredAreasID`,`SchoolMask`,`RuneCostID`,`SpellMissileID`,`PowerDisplayID`,`EffectBonusMultiplier_1`,`EffectBonusMultiplier_2`,`EffectBonusMultiplier_3`,`SpellDescriptionVariableID`,`SpellDifficultyID`)
VALUES (20533,0,0,0,384,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,7,0,0,75,0,0,0,0,0,712,0,0,0,0,0,22,0,0,15,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,795,0,11,0,0,'Intense Heat','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712188,'','','','','','','','','','','','','','','','',16712188,'','','','','','','','','','','','','','','','',16712188,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,4,0,0,0,0.10000000149011612,0,0,0,0);
/* Update to reduce damage */
UPDATE spell_dbc SET EffectBasePoints_1 = 500 WHERE ID = 20533;

/* Anub'Rekhan Locust Swarm: Reduce movement speed by 80% instead of 40% (So that tank is able to outrun and still tank Crypt guard) */
INSERT IGNORE INTO spell_dbc (`ID`,`Category`,`DispelType`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`ShapeshiftMask`,`unk_320_2`,`ShapeshiftExclude`,`unk_320_3`,`Targets`,`TargetCreatureType`,`RequiresSpellFocus`,`FacingCasterFlags`,`CasterAuraState`,`TargetAuraState`,`ExcludeCasterAuraState`,`ExcludeTargetAuraState`,`CasterAuraSpell`,`TargetAuraSpell`,`ExcludeCasterAuraSpell`,`ExcludeTargetAuraSpell`,`CastingTimeIndex`,`RecoveryTime`,`CategoryRecoveryTime`,`InterruptFlags`,`AuraInterruptFlags`,`ChannelInterruptFlags`,`ProcTypeMask`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`PowerType`,`ManaCost`,`ManaCostPerLevel`,`ManaPerSecond`,`ManaPerSecondPerLevel`,`RangeIndex`,`Speed`,`ModalNextSpell`,`CumulativeAura`,`Totem_1`,`Totem_2`,`Reagent_1`,`Reagent_2`,`Reagent_3`,`Reagent_4`,`Reagent_5`,`Reagent_6`,`Reagent_7`,`Reagent_8`,`ReagentCount_1`,`ReagentCount_2`,`ReagentCount_3`,`ReagentCount_4`,`ReagentCount_5`,`ReagentCount_6`,`ReagentCount_7`,`ReagentCount_8`,`EquippedItemClass`,`EquippedItemSubclass`,`EquippedItemInvTypes`,`Effect_1`,`Effect_2`,`Effect_3`,`EffectDieSides_1`,`EffectDieSides_2`,`EffectDieSides_3`,`EffectRealPointsPerLevel_1`,`EffectRealPointsPerLevel_2`,`EffectRealPointsPerLevel_3`,`EffectBasePoints_1`,`EffectBasePoints_2`,`EffectBasePoints_3`,`EffectMechanic_1`,`EffectMechanic_2`,`EffectMechanic_3`,`ImplicitTargetA_1`,`ImplicitTargetA_2`,`ImplicitTargetA_3`,`ImplicitTargetB_1`,`ImplicitTargetB_2`,`ImplicitTargetB_3`,`EffectRadiusIndex_1`,`EffectRadiusIndex_2`,`EffectRadiusIndex_3`,`EffectAura_1`,`EffectAura_2`,`EffectAura_3`,`EffectAuraPeriod_1`,`EffectAuraPeriod_2`,`EffectAuraPeriod_3`,`EffectMultipleValue_1`,`EffectMultipleValue_2`,`EffectMultipleValue_3`,`EffectChainTargets_1`,`EffectChainTargets_2`,`EffectChainTargets_3`,`EffectItemType_1`,`EffectItemType_2`,`EffectItemType_3`,`EffectMiscValue_1`,`EffectMiscValue_2`,`EffectMiscValue_3`,`EffectMiscValueB_1`,`EffectMiscValueB_2`,`EffectMiscValueB_3`,`EffectTriggerSpell_1`,`EffectTriggerSpell_2`,`EffectTriggerSpell_3`,`EffectPointsPerCombo_1`,`EffectPointsPerCombo_2`,`EffectPointsPerCombo_3`,`EffectSpellClassMaskA_1`,`EffectSpellClassMaskA_2`,`EffectSpellClassMaskA_3`,`EffectSpellClassMaskB_1`,`EffectSpellClassMaskB_2`,`EffectSpellClassMaskB_3`,`EffectSpellClassMaskC_1`,`EffectSpellClassMaskC_2`,`EffectSpellClassMaskC_3`,`SpellVisualID_1`,`SpellVisualID_2`,`SpellIconID`,`ActiveIconID`,`SpellPriority`,`Name_Lang_enUS`,`Name_Lang_enGB`,`Name_Lang_koKR`,`Name_Lang_frFR`,`Name_Lang_deDE`,`Name_Lang_enCN`,`Name_Lang_zhCN`,`Name_Lang_enTW`,`Name_Lang_zhTW`,`Name_Lang_esES`,`Name_Lang_esMX`,`Name_Lang_ruRU`,`Name_Lang_ptPT`,`Name_Lang_ptBR`,`Name_Lang_itIT`,`Name_Lang_Unk`,`Name_Lang_Mask`,`NameSubtext_Lang_enUS`,`NameSubtext_Lang_enGB`,`NameSubtext_Lang_koKR`,`NameSubtext_Lang_frFR`,`NameSubtext_Lang_deDE`,`NameSubtext_Lang_enCN`,`NameSubtext_Lang_zhCN`,`NameSubtext_Lang_enTW`,`NameSubtext_Lang_zhTW`,`NameSubtext_Lang_esES`,`NameSubtext_Lang_esMX`,`NameSubtext_Lang_ruRU`,`NameSubtext_Lang_ptPT`,`NameSubtext_Lang_ptBR`,`NameSubtext_Lang_itIT`,`NameSubtext_Lang_Unk`,`NameSubtext_Lang_Mask`,`Description_Lang_enUS`,`Description_Lang_enGB`,`Description_Lang_koKR`,`Description_Lang_frFR`,`Description_Lang_deDE`,`Description_Lang_enCN`,`Description_Lang_zhCN`,`Description_Lang_enTW`,`Description_Lang_zhTW`,`Description_Lang_esES`,`Description_Lang_esMX`,`Description_Lang_ruRU`,`Description_Lang_ptPT`,`Description_Lang_ptBR`,`Description_Lang_itIT`,`Description_Lang_Unk`,`Description_Lang_Mask`,`AuraDescription_Lang_enUS`,`AuraDescription_Lang_enGB`,`AuraDescription_Lang_koKR`,`AuraDescription_Lang_frFR`,`AuraDescription_Lang_deDE`,`AuraDescription_Lang_enCN`,`AuraDescription_Lang_zhCN`,`AuraDescription_Lang_enTW`,`AuraDescription_Lang_zhTW`,`AuraDescription_Lang_esES`,`AuraDescription_Lang_esMX`,`AuraDescription_Lang_ruRU`,`AuraDescription_Lang_ptPT`,`AuraDescription_Lang_ptBR`,`AuraDescription_Lang_itIT`,`AuraDescription_Lang_Unk`,`AuraDescription_Lang_Mask`,`ManaCostPct`,`StartRecoveryCategory`,`StartRecoveryTime`,`MaxTargetLevel`,`SpellClassSet`,`SpellClassMask_1`,`SpellClassMask_2`,`SpellClassMask_3`,`MaxTargets`,`DefenseType`,`PreventionType`,`StanceBarOrder`,`EffectChainAmplitude_1`,`EffectChainAmplitude_2`,`EffectChainAmplitude_3`,`MinFactionID`,`MinReputation`,`RequiredAuraVision`,`RequiredTotemCategoryID_1`,`RequiredTotemCategoryID_2`,`RequiredAreasID`,`SchoolMask`,`RuneCostID`,`SpellMissileID`,`PowerDisplayID`,`EffectBonusMultiplier_1`,`EffectBonusMultiplier_2`,`EffectBonusMultiplier_3`,`SpellDescriptionVariableID`,`SpellDifficultyID`)
VALUES (28785,1152,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,20000,9,0,0,0,101,0,0,0,0,387,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,6,6,0,0,1,0,0,0,0,0,-41,0,0,0,0,1,1,0,0,0,0,0,0,0,23,33,0,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,28786,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7621,0,1771,0,0,'Locust Swarm','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712172,'Anub\'Rekhan releases a locust swarm, slowing his movement by $s2\% and damaging all nearby enemies. Nearby enemies are unable to attack or cast spells.','','','','','','','','','','','','','','','',16712190,'Movement speed slowed by $s2\%.','','','','','','','','','','','','','','','',16712190,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0);
UPDATE spell_dbc SET EffectBasePoints_2 = -80 WHERE ID = 28785;

INSERT IGNORE INTO spell_dbc (`ID`,`Category`,`DispelType`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`ShapeshiftMask`,`unk_320_2`,`ShapeshiftExclude`,`unk_320_3`,`Targets`,`TargetCreatureType`,`RequiresSpellFocus`,`FacingCasterFlags`,`CasterAuraState`,`TargetAuraState`,`ExcludeCasterAuraState`,`ExcludeTargetAuraState`,`CasterAuraSpell`,`TargetAuraSpell`,`ExcludeCasterAuraSpell`,`ExcludeTargetAuraSpell`,`CastingTimeIndex`,`RecoveryTime`,`CategoryRecoveryTime`,`InterruptFlags`,`AuraInterruptFlags`,`ChannelInterruptFlags`,`ProcTypeMask`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`PowerType`,`ManaCost`,`ManaCostPerLevel`,`ManaPerSecond`,`ManaPerSecondPerLevel`,`RangeIndex`,`Speed`,`ModalNextSpell`,`CumulativeAura`,`Totem_1`,`Totem_2`,`Reagent_1`,`Reagent_2`,`Reagent_3`,`Reagent_4`,`Reagent_5`,`Reagent_6`,`Reagent_7`,`Reagent_8`,`ReagentCount_1`,`ReagentCount_2`,`ReagentCount_3`,`ReagentCount_4`,`ReagentCount_5`,`ReagentCount_6`,`ReagentCount_7`,`ReagentCount_8`,`EquippedItemClass`,`EquippedItemSubclass`,`EquippedItemInvTypes`,`Effect_1`,`Effect_2`,`Effect_3`,`EffectDieSides_1`,`EffectDieSides_2`,`EffectDieSides_3`,`EffectRealPointsPerLevel_1`,`EffectRealPointsPerLevel_2`,`EffectRealPointsPerLevel_3`,`EffectBasePoints_1`,`EffectBasePoints_2`,`EffectBasePoints_3`,`EffectMechanic_1`,`EffectMechanic_2`,`EffectMechanic_3`,`ImplicitTargetA_1`,`ImplicitTargetA_2`,`ImplicitTargetA_3`,`ImplicitTargetB_1`,`ImplicitTargetB_2`,`ImplicitTargetB_3`,`EffectRadiusIndex_1`,`EffectRadiusIndex_2`,`EffectRadiusIndex_3`,`EffectAura_1`,`EffectAura_2`,`EffectAura_3`,`EffectAuraPeriod_1`,`EffectAuraPeriod_2`,`EffectAuraPeriod_3`,`EffectMultipleValue_1`,`EffectMultipleValue_2`,`EffectMultipleValue_3`,`EffectChainTargets_1`,`EffectChainTargets_2`,`EffectChainTargets_3`,`EffectItemType_1`,`EffectItemType_2`,`EffectItemType_3`,`EffectMiscValue_1`,`EffectMiscValue_2`,`EffectMiscValue_3`,`EffectMiscValueB_1`,`EffectMiscValueB_2`,`EffectMiscValueB_3`,`EffectTriggerSpell_1`,`EffectTriggerSpell_2`,`EffectTriggerSpell_3`,`EffectPointsPerCombo_1`,`EffectPointsPerCombo_2`,`EffectPointsPerCombo_3`,`EffectSpellClassMaskA_1`,`EffectSpellClassMaskA_2`,`EffectSpellClassMaskA_3`,`EffectSpellClassMaskB_1`,`EffectSpellClassMaskB_2`,`EffectSpellClassMaskB_3`,`EffectSpellClassMaskC_1`,`EffectSpellClassMaskC_2`,`EffectSpellClassMaskC_3`,`SpellVisualID_1`,`SpellVisualID_2`,`SpellIconID`,`ActiveIconID`,`SpellPriority`,`Name_Lang_enUS`,`Name_Lang_enGB`,`Name_Lang_koKR`,`Name_Lang_frFR`,`Name_Lang_deDE`,`Name_Lang_enCN`,`Name_Lang_zhCN`,`Name_Lang_enTW`,`Name_Lang_zhTW`,`Name_Lang_esES`,`Name_Lang_esMX`,`Name_Lang_ruRU`,`Name_Lang_ptPT`,`Name_Lang_ptBR`,`Name_Lang_itIT`,`Name_Lang_Unk`,`Name_Lang_Mask`,`NameSubtext_Lang_enUS`,`NameSubtext_Lang_enGB`,`NameSubtext_Lang_koKR`,`NameSubtext_Lang_frFR`,`NameSubtext_Lang_deDE`,`NameSubtext_Lang_enCN`,`NameSubtext_Lang_zhCN`,`NameSubtext_Lang_enTW`,`NameSubtext_Lang_zhTW`,`NameSubtext_Lang_esES`,`NameSubtext_Lang_esMX`,`NameSubtext_Lang_ruRU`,`NameSubtext_Lang_ptPT`,`NameSubtext_Lang_ptBR`,`NameSubtext_Lang_itIT`,`NameSubtext_Lang_Unk`,`NameSubtext_Lang_Mask`,`Description_Lang_enUS`,`Description_Lang_enGB`,`Description_Lang_koKR`,`Description_Lang_frFR`,`Description_Lang_deDE`,`Description_Lang_enCN`,`Description_Lang_zhCN`,`Description_Lang_enTW`,`Description_Lang_zhTW`,`Description_Lang_esES`,`Description_Lang_esMX`,`Description_Lang_ruRU`,`Description_Lang_ptPT`,`Description_Lang_ptBR`,`Description_Lang_itIT`,`Description_Lang_Unk`,`Description_Lang_Mask`,`AuraDescription_Lang_enUS`,`AuraDescription_Lang_enGB`,`AuraDescription_Lang_koKR`,`AuraDescription_Lang_frFR`,`AuraDescription_Lang_deDE`,`AuraDescription_Lang_enCN`,`AuraDescription_Lang_zhCN`,`AuraDescription_Lang_enTW`,`AuraDescription_Lang_zhTW`,`AuraDescription_Lang_esES`,`AuraDescription_Lang_esMX`,`AuraDescription_Lang_ruRU`,`AuraDescription_Lang_ptPT`,`AuraDescription_Lang_ptBR`,`AuraDescription_Lang_itIT`,`AuraDescription_Lang_Unk`,`AuraDescription_Lang_Mask`,`ManaCostPct`,`StartRecoveryCategory`,`StartRecoveryTime`,`MaxTargetLevel`,`SpellClassSet`,`SpellClassMask_1`,`SpellClassMask_2`,`SpellClassMask_3`,`MaxTargets`,`DefenseType`,`PreventionType`,`StanceBarOrder`,`EffectChainAmplitude_1`,`EffectChainAmplitude_2`,`EffectChainAmplitude_3`,`MinFactionID`,`MinReputation`,`RequiredAuraVision`,`RequiredTotemCategoryID_1`,`RequiredTotemCategoryID_2`,`RequiredAreasID`,`SchoolMask`,`RuneCostID`,`SpellMissileID`,`PowerDisplayID`,`EffectBonusMultiplier_1`,`EffectBonusMultiplier_2`,`EffectBonusMultiplier_3`,`SpellDescriptionVariableID`,`SpellDifficultyID`)
VALUES (54021,1152,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,20000,9,0,0,0,101,0,0,0,0,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,6,6,0,0,1,0,0,0,0,0,-26,0,0,0,0,1,1,0,0,0,0,0,0,0,23,33,0,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,54022,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7621,0,1771,0,0,'Locust Swarm','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712172,'Anub\'Rekhan releases a locust swarm, slowing his movement by $s2\% and damaging all nearby enemies. Nearby enemies are unable to attack or cast spells.','','','','','','','','','','','','','','','',16712190,'Movement speed slowed by $s2\%.','','','','','','','','','','','','','','','',16712190,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0);
UPDATE spell_dbc SET EffectBasePoints_2 = -80 WHERE ID = 54021;

/********************************************************/
/* Gameobject Adjustments */
/********************************************************/
/* Half Ulduar Tower HP */
UPDATE gameobject_template SET Data0 = 15000, Data5 = 15000 WHERE entry IN (194370, 194371, 194375,194377);
/* Half Ulduar Storm Beacon HP */
UPDATE gameobject_template SET Data5 = 10000 WHERE entry IN (194398,194399,194400,194401,194402,194403,194404,194405,194406,194407,194408,194409,194410,194411,194412,194413,194414,194506);
UPDATE gameobject_template SET Data0 = 9999 WHERE entry IN (194415);