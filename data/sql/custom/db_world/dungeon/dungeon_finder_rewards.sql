/* No emblem of frost / emblem of triumph for now */
/* Just emblem of heroism instead */

/* LFG Normal (First only) -> 2 Emblems of Triumph */
UPDATE `quest_template` SET `RewardItem1` = 40752, `RewardAmount1` = 2 WHERE (`ID` = 24790);

/* LFG Heroic -> 5 Emblems of Triumph */
UPDATE `quest_template` SET `RewardItem1` = 40752, `RewardAmount1` = 5 WHERE (`ID` = 24788);
UPDATE `quest_template` SET `RewardItem1` = 40752, `RewardAmount1` = 5 WHERE (`ID` = 24789);

/****************************************/
/* Queries to revert the above changes: */
/****************************************/
-- UPDATE `quest_template` SET `RewardItem1` = 47241, `RewardAmount1` = 2 WHERE (`ID` = 24790);
-- UPDATE `quest_template` SET `RewardItem1` = 49426, `RewardAmount1` = 2 WHERE (`ID` = 24788);
-- UPDATE `quest_template` SET `RewardItem1` = 47241, `RewardAmount1` = 2 WHERE (`ID` = 24789);