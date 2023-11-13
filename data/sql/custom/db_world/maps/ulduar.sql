/* Always activate teleporter so that flame leviathan can potentially be skipped */
DELETE FROM conditions WHERE SourceTypeOrReferenceId=22 AND SourceGroup=2 AND SourceEntry=194569;

/* Always activate teleporter option to colossal forge */
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=10389 AND SourceEntry=2;

/* Freya: Reduce movement speed detonating lashers */
UPDATE `creature_template` SET `speed_run` = 0.25 WHERE `entry` IN (32918);

/* Mimiron: Reduce movement speed of bomb-bots */
UPDATE `creature_template` SET `speed_run` = 0.25 WHERE `entry` IN (33836);