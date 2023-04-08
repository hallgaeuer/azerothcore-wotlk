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