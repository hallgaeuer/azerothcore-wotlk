/**********************/
/* Warrior */
/**********************/
/* Defensive Stance */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 71, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Berserker Stance */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 2458, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Taunt */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 355, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Sunder Armor */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 7386, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Intercept */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 20252, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/**********************/
/* Warlock */
/**********************/
/* Summon Succubus */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 712, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warlock Trainer%');

/* Summon Voidwalker */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 697, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warlock Trainer%');

/* Summon Felhunter */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 691, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warlock Trainer%');

/**********************/
/* Death Knight */
/**********************/
/* Unholy Presence available at 60 */
INSERT IGNORE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 48265, 0, 0, 0, 60 FROM `creature_template` WHERE `trainer_class` = 6;
UPDATE npc_trainer SET ReqLevel = 60 WHERE SpellID = 48265;
