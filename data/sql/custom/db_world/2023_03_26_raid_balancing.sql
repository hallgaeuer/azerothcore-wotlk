TRUNCATE mod_quickbalance_modifier;
insert into mod_quickbalance_modifier (Map, Creature, DamageModifier, HealthModifier, ManaModifier, ArmorModifier, Comment)
values  (309, 0, 0.7, 0.6, 1, 1, 'Zul Gurub'),
        (409, 0, 0.6, 0.2, 1, 1, 'Molten Core'),
        (409, 11988, 0.5, 0.2, 1, 1, 'Molten Core - Golemagg'),
        (409, 11502, 0.4, 0.2, 1, 1, 'Molten Core - Ragnaros'),
        (409, 12143, 0.5, 0.4, 1, 1, 'Molten Core - Son of Flame (Ragnaros)'),
        (409, 11672, 0.3, 0.2, 1, 1, 'Molten Core - Core Rager (Golemagg)'),
        (409, 12099, 0.1, 0.2, 1, 1, 'Molten Core - Firesworn (Garr)'),
        (409, 11662, 0.25, 0.2, 1, 1, 'Molten Core - Flamewaker Priest (Sulfuron)'),
        (409, 11663, 0.15, 0.2, 1, 1, 'Molten Core - Flamewaker Healer (Majordomo)'),
        (409, 11664, 0.15, 0.2, 1, 1, 'Molten Core - Flamewaker Elite (Majordomo)'),
        (469, 0, 0.7, 0.2, 1, 1, 'BWL'),
        (509, 0, 0.7, 0.4, 1, 1, 'AQ20'),
        (531, 0, 0.7, 0.2, 1, 1, 'AQ40');

/* Deactivate some creatures in MC */
UPDATE creature SET phaseMask = 16384 WHERE guid IN(
    56685, -- Core Rager
    56681, -- Flamewaker Priest
    56682 -- Flamewaker Priest
);

/* Delete some summons */
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

/* Reduce damage of Majordomo lava */
/* Original extracted DBC Data */
INSERT IGNORE INTO spell_dbc (`ID`,`Category`,`DispelType`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`ShapeshiftMask`,`unk_320_2`,`ShapeshiftExclude`,`unk_320_3`,`Targets`,`TargetCreatureType`,`RequiresSpellFocus`,`FacingCasterFlags`,`CasterAuraState`,`TargetAuraState`,`ExcludeCasterAuraState`,`ExcludeTargetAuraState`,`CasterAuraSpell`,`TargetAuraSpell`,`ExcludeCasterAuraSpell`,`ExcludeTargetAuraSpell`,`CastingTimeIndex`,`RecoveryTime`,`CategoryRecoveryTime`,`InterruptFlags`,`AuraInterruptFlags`,`ChannelInterruptFlags`,`ProcTypeMask`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`PowerType`,`ManaCost`,`ManaCostPerLevel`,`ManaPerSecond`,`ManaPerSecondPerLevel`,`RangeIndex`,`Speed`,`ModalNextSpell`,`CumulativeAura`,`Totem_1`,`Totem_2`,`Reagent_1`,`Reagent_2`,`Reagent_3`,`Reagent_4`,`Reagent_5`,`Reagent_6`,`Reagent_7`,`Reagent_8`,`ReagentCount_1`,`ReagentCount_2`,`ReagentCount_3`,`ReagentCount_4`,`ReagentCount_5`,`ReagentCount_6`,`ReagentCount_7`,`ReagentCount_8`,`EquippedItemClass`,`EquippedItemSubclass`,`EquippedItemInvTypes`,`Effect_1`,`Effect_2`,`Effect_3`,`EffectDieSides_1`,`EffectDieSides_2`,`EffectDieSides_3`,`EffectRealPointsPerLevel_1`,`EffectRealPointsPerLevel_2`,`EffectRealPointsPerLevel_3`,`EffectBasePoints_1`,`EffectBasePoints_2`,`EffectBasePoints_3`,`EffectMechanic_1`,`EffectMechanic_2`,`EffectMechanic_3`,`ImplicitTargetA_1`,`ImplicitTargetA_2`,`ImplicitTargetA_3`,`ImplicitTargetB_1`,`ImplicitTargetB_2`,`ImplicitTargetB_3`,`EffectRadiusIndex_1`,`EffectRadiusIndex_2`,`EffectRadiusIndex_3`,`EffectAura_1`,`EffectAura_2`,`EffectAura_3`,`EffectAuraPeriod_1`,`EffectAuraPeriod_2`,`EffectAuraPeriod_3`,`EffectMultipleValue_1`,`EffectMultipleValue_2`,`EffectMultipleValue_3`,`EffectChainTargets_1`,`EffectChainTargets_2`,`EffectChainTargets_3`,`EffectItemType_1`,`EffectItemType_2`,`EffectItemType_3`,`EffectMiscValue_1`,`EffectMiscValue_2`,`EffectMiscValue_3`,`EffectMiscValueB_1`,`EffectMiscValueB_2`,`EffectMiscValueB_3`,`EffectTriggerSpell_1`,`EffectTriggerSpell_2`,`EffectTriggerSpell_3`,`EffectPointsPerCombo_1`,`EffectPointsPerCombo_2`,`EffectPointsPerCombo_3`,`EffectSpellClassMaskA_1`,`EffectSpellClassMaskA_2`,`EffectSpellClassMaskA_3`,`EffectSpellClassMaskB_1`,`EffectSpellClassMaskB_2`,`EffectSpellClassMaskB_3`,`EffectSpellClassMaskC_1`,`EffectSpellClassMaskC_2`,`EffectSpellClassMaskC_3`,`SpellVisualID_1`,`SpellVisualID_2`,`SpellIconID`,`ActiveIconID`,`SpellPriority`,`Name_Lang_enUS`,`Name_Lang_enGB`,`Name_Lang_koKR`,`Name_Lang_frFR`,`Name_Lang_deDE`,`Name_Lang_enCN`,`Name_Lang_zhCN`,`Name_Lang_enTW`,`Name_Lang_zhTW`,`Name_Lang_esES`,`Name_Lang_esMX`,`Name_Lang_ruRU`,`Name_Lang_ptPT`,`Name_Lang_ptBR`,`Name_Lang_itIT`,`Name_Lang_Unk`,`Name_Lang_Mask`,`NameSubtext_Lang_enUS`,`NameSubtext_Lang_enGB`,`NameSubtext_Lang_koKR`,`NameSubtext_Lang_frFR`,`NameSubtext_Lang_deDE`,`NameSubtext_Lang_enCN`,`NameSubtext_Lang_zhCN`,`NameSubtext_Lang_enTW`,`NameSubtext_Lang_zhTW`,`NameSubtext_Lang_esES`,`NameSubtext_Lang_esMX`,`NameSubtext_Lang_ruRU`,`NameSubtext_Lang_ptPT`,`NameSubtext_Lang_ptBR`,`NameSubtext_Lang_itIT`,`NameSubtext_Lang_Unk`,`NameSubtext_Lang_Mask`,`Description_Lang_enUS`,`Description_Lang_enGB`,`Description_Lang_koKR`,`Description_Lang_frFR`,`Description_Lang_deDE`,`Description_Lang_enCN`,`Description_Lang_zhCN`,`Description_Lang_enTW`,`Description_Lang_zhTW`,`Description_Lang_esES`,`Description_Lang_esMX`,`Description_Lang_ruRU`,`Description_Lang_ptPT`,`Description_Lang_ptBR`,`Description_Lang_itIT`,`Description_Lang_Unk`,`Description_Lang_Mask`,`AuraDescription_Lang_enUS`,`AuraDescription_Lang_enGB`,`AuraDescription_Lang_koKR`,`AuraDescription_Lang_frFR`,`AuraDescription_Lang_deDE`,`AuraDescription_Lang_enCN`,`AuraDescription_Lang_zhCN`,`AuraDescription_Lang_enTW`,`AuraDescription_Lang_zhTW`,`AuraDescription_Lang_esES`,`AuraDescription_Lang_esMX`,`AuraDescription_Lang_ruRU`,`AuraDescription_Lang_ptPT`,`AuraDescription_Lang_ptBR`,`AuraDescription_Lang_itIT`,`AuraDescription_Lang_Unk`,`AuraDescription_Lang_Mask`,`ManaCostPct`,`StartRecoveryCategory`,`StartRecoveryTime`,`MaxTargetLevel`,`SpellClassSet`,`SpellClassMask_1`,`SpellClassMask_2`,`SpellClassMask_3`,`MaxTargets`,`DefenseType`,`PreventionType`,`StanceBarOrder`,`EffectChainAmplitude_1`,`EffectChainAmplitude_2`,`EffectChainAmplitude_3`,`MinFactionID`,`MinReputation`,`RequiredAuraVision`,`RequiredTotemCategoryID_1`,`RequiredTotemCategoryID_2`,`RequiredAreasID`,`SchoolMask`,`RuneCostID`,`SpellMissileID`,`PowerDisplayID`,`EffectBonusMultiplier_1`,`EffectBonusMultiplier_2`,`EffectBonusMultiplier_3`,`SpellDescriptionVariableID`,`SpellDifficultyID`)
VALUES (20533,0,0,0,384,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,7,0,0,75,0,0,0,0,0,712,0,0,0,0,0,22,0,0,15,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,795,0,11,0,0,'Intense Heat','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712188,'','','','','','','','','','','','','','','','',16712188,'','','','','','','','','','','','','','','','',16712188,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,4,0,0,0,0.10000000149011612,0,0,0,0);
/* Update to reduce damage */
UPDATE spell_dbc SET EffectBasePoints_1 = 250 WHERE ID = 20533;