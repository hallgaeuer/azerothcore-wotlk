/* Higher respawn time for Sludge Belchers (mobs before Patchwerk) */
/* Default is 5 min */
UPDATE creature SET spawntimesecs = 3600 WHERE map = 533 AND id1 = 16029;

/* Reduce thaddius health via creature_template */
/* It somehow resets to its original if it is reduced via the quickbalance module */
UPDATE `creature_template` SET `HealthModifier` = 96 WHERE (`entry` = 15928);
/* 25m mode */
UPDATE `creature_template` SET `HealthModifier` = 137 WHERE (`entry` = 15928);