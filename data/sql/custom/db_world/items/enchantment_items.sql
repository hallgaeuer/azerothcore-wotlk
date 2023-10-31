/* Remove Rep requirements from all enchantment items */
UPDATE 
    `item_template`
SET 
    `RequiredReputationFaction` = 0, `RequiredReputationRank` = 0
WHERE
    `entry` IN (
        /* Weapons: */
        42500,
        41976,
        41167,
        44739,
        41146,
        /* Head Slot: */
        44140,
        44141,
        44139,
        44137,
        44138,
        50370,
        50368,
        50369,
        50367,
        /* Shoulder: */
        50335,
        50336,
        50337,
        50338,
        /* Legs: */
        44963,
        38373,
        38374,
        41602,
        41604
    );
/* Custom Prices*/

UPDATE 
    `item_template`
SET 
    `BuyPrice` = 1000000
WHERE
    `entry` IN (
        /* Legs: */
        44963,
        38373,
        38374,
        41602,
        41604
    );