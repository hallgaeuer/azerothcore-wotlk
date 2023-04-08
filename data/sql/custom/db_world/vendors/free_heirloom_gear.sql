/* Free Heirloom Gear */
/* No Badge Price */
UPDATE npc_vendor
SET ExtendedCost = 0
WHERE entry = 35507;

/* No Gold Price */
UPDATE `item_template`
SET `BuyPrice` = 0
WHERE `entry` IN (
                  42943,
                  42944,
                  42945,
                  42946,
                  42947,
                  42948,
                  42949,
                  42950,
                  42951,
                  42952,
                  42984,
                  42985,
                  42991,
                  42992,
                  48677,
                  48683,
                  48685,
                  48687,
                  48689,
                  48691,
                  48716,
                  48718
    );

/* Spawn Heirloom vendor at Krasus Landing */
DELETE FROM creature WHERE guid = 5000551;
INSERT INTO creature
    (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild) VALUES
    (5000551, 35507, 0, 0, 571, 0, 0, 1, 1, 1, 5788.47, 483.833, 657.605, 5.49383, 300, 0, 0, 10080, 8814, 0, 0, 0, 0, '', null);
