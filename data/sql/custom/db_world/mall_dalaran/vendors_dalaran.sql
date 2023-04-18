/* Spawn Heirloom vendor at Krasus Landing */
DELETE FROM creature WHERE guid = 5000551;
INSERT INTO creature
    (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild) VALUES
    (5000551, 35507, 0, 0, 571, 0, 0, 1, 1, 1, 5788.47, 483.833, 657.605, 5.49383, 300, 0, 0, 10080, 8814, 0, 0, 0, 0, '', null);

/* Spawn lvl 80 green gear vendors in Dalaran Krasus Landing */
DELETE FROM creature WHERE guid BETWEEN 5000567 AND 5000572;
insert into creature (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild)
values
        (5000572, 9000007, 0, 0, 571, 0, 0, 1, 1, 0, 5787.51, 449.478, 658.782, 0.103625, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000571, 9000006, 0, 0, 571, 0, 0, 1, 1, 0, 5787.69, 451.196, 658.783, 6.12371, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000570, 9000005, 0, 0, 571, 0, 0, 1, 1, 0, 5787.99, 452.869, 658.783, 6.07829, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000569, 9000004, 0, 0, 571, 0, 0, 1, 1, 0, 5788.35, 454.627, 658.783, 6.07829, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000568, 9000003, 0, 0, 571, 0, 0, 1, 1, 0, 5788.73, 456.448, 658.783, 6.07829, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null),
        (5000567, 9000002, 0, 0, 571, 0, 0, 1, 1, 0, 5789.11, 458.26, 658.783, 6.07829, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null);

REPLACE INTO creature (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild)
values  (5000590, 9000009, 0, 0, 571, 0, 0, 1, 1, 0, 5787.57, 447.779, 658.783, 0.102936, 300, 0, 0, 5342, 0, 0, 0, 0, 0, '', null);

/* Auction Master */
REPLACE INTO creature (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild) values (5000593, 8661, 0, 0, 571, 0, 0, 1, 1, 1, 5849.38, 447.174, 658.816, 3.1244, 300, 0, 0, 6645, 0, 0, 0, 0, 0, '', null);
