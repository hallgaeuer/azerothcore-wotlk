/* Higher respawn time for Sludge Belchers (mobs before Patchwerk) */
/* Default is 5 min */
UPDATE creature SET spawntimesecs = 3600 WHERE map = 533 AND id1 = 16029;

/* Slow down Embalming Slime on Naxx 25 */
UPDATE `creature_template` SET `speed_run` = 0.42857 WHERE (`entry` = 29355);

/* Reduce movement speed of Gluth zombie by 70% */
UPDATE `creature_template` SET `speed_run` = 0.255 WHERE `entry` IN (16360, 30303);