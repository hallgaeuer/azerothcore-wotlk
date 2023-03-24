/* Warrior */
DELETE FROM 
	`npc_trainer` 
WHERE 
	`ID` IN (
		SELECT `creature_template`.`entry` FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%')
	)
AND `SpellID` IN (71, 2458, 355, 7386, 20252);

/* Defensive Stance */
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 71, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Berserker Stance */
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 2458, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Taunt */
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 355, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Sunder Armor */
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 7386, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Intercept */
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 20252, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warrior Trainer%');

/* Warlock */
DELETE FROM 
	`npc_trainer` 
WHERE 
	`ID` IN (
		SELECT `creature_template`.`entry` FROM `creature_template` WHERE (`subname` LIKE '%Warlock Trainer%')
	)
AND `SpellID` IN (712, 697, 691);

/* Summon Succubus */
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 712, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warlock Trainer%');

/* Summon Voidwalker */
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 697, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warlock Trainer%');

/* Summon Felhunter */
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) 
SELECT `creature_template`.`entry`, 691, 0, 0, 0, 0 FROM `creature_template` WHERE (`subname` LIKE '%Warlock Trainer%');

