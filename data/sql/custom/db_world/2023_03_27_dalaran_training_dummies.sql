DELETE FROM creature WHERE guid BETWEEN 5000546 AND 5000548;

insert into creature (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild)
values  (5000548, 31146, 0, 0, 571, 0, 0, 1, 1, 0, 5848.26, 458.969, 657.611, 3.46212, 300, 0, 0, 24009944, 0, 0, 0, 0, 0, '', null),
        (5000547, 31146, 0, 0, 571, 0, 0, 1, 1, 0, 5845.81, 464.978, 657.614, 3.56579, 300, 0, 0, 24009944, 0, 0, 0, 0, 0, '', null),
        (5000546, 31146, 0, 0, 571, 0, 0, 1, 1, 0, 5842.66, 470.761, 657.66, 3.80534, 300, 0, 0, 24009944, 0, 0, 0, 0, 0, '', null);