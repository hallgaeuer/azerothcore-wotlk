/* Add CTM for Power Sparks. Otherwise they will continously fall */
DELETE FROM `creature_template_movement` WHERE (`CreatureId` = 30084);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(30084, 0, 0, 1, 0, 0, 0, 0);
