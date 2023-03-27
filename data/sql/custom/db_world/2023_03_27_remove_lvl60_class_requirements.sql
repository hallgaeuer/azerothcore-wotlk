/* No class requirements on lvl 60 gear to allow for more diverse itemisation */
UPDATE item_template
SET AllowableClass = -1
WHERE RequiredLevel = 60 AND AllowableClass > 0 AND InventoryType > 0 AND ContainerSlots = 0;