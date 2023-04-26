/******************************************************************************************************************************/
/* Adds spells to class trainers that originally belong to that class, but are usually acquired by quest or something similar */
/******************************************************************************************************************************/

/**********************/
/* Warrior */
/**********************/
/* Defensive Stance */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 71, 0, 0, 0, 0 FROM `creature_template` WHERE `trainer_class` = 1;

/* Berserker Stance */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 2458, 0, 0, 0, 0 FROM `creature_template` WHERE `trainer_class` = 1;

/* Taunt */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 355, 0, 0, 0, 0 FROM `creature_template` WHERE `trainer_class` = 1;

/* Sunder Armor */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 7386, 0, 0, 0, 0 FROM `creature_template` WHERE `trainer_class` = 1;

/* Intercept */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 20252, 0, 0, 0, 0 FROM `creature_template` WHERE `trainer_class` = 1;

/**********************/
/* Warlock */
/**********************/
/* Summon Succubus */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 712, 0, 0, 0, 0 FROM `creature_template` WHERE `trainer_class` = 9;

/* Summon Voidwalker */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 697, 0, 0, 0, 0 FROM `creature_template` WHERE `trainer_class` = 9;

/* Summon Felhunter */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 691, 0, 0, 0, 0 FROM `creature_template` WHERE `trainer_class` = 9;

/**********************/
/* Death Knight */
/**********************/
/* Unholy Presence available at 60 */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 48265, 0, 0, 0, 60 FROM `creature_template` WHERE `trainer_class` = 6;
UPDATE npc_trainer SET ReqLevel = 60 WHERE SpellID = 48265;
