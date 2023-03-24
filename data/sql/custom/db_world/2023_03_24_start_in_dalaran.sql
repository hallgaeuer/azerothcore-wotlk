/* Updates start location to Dalaran for most classes */
/* Death Knights excluded, since the "skip dk starting area" module won't work otherwise */
UPDATE
    playercreateinfo
SET
    map = 571,
    zone = 4395,
    position_x = 5810.6,
    position_y = 441.16,
    position_z = 658.8,
    orientation = 1.16
WHERE class != 6;