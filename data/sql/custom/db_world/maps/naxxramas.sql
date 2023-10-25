/* Higher respawn time for Sludge Belchers (mobs before Patchwerk) */
/* Default is 5 min */
UPDATE creature SET spawntimesecs = 3600 WHERE map = 533 AND id1 = 16029;