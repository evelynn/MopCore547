SET @A_ENTRY = 50372;
SET @DGT_ENTRY = 50373;
SET @RD_ENTRY = 50374;

UPDATE `creature` SET `MovementType`=2,`spawndist`=0, `position_x`=1674.95, `position_y`=1683.32, `position_z`=139.203 WHERE `id`=@A_ENTRY;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id`=@DGT_ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@A_ENTRY, @DGT_ENTRY, @RD_ENTRY) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@A_ENTRY*100 AND `source_type`=9;
UPDATE `creature_template` SET `AIName`="", `scriptname`="npc_aradne" WHERE `entry`=@A_ENTRY;
UPDATE `creature_template` SET `AIName`="", `scriptname`="npc_deathknell_grave_target" WHERE `entry`=@DGT_ENTRY;
UPDATE `creature_template` SET `AIName`="", `scriptname`="npc_risen_dead" WHERE `entry`=@RD_ENTRY;
UPDATE `creature_template_addon` SET `path_id`=@A_ENTRY*100 WHERE `entry`=@A_ENTRY;
UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry`=@RD_ENTRY;
DELETE FROM creature_text WHERE entry=@RD_ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@RD_ENTRY, 0, 0, 'What... what''s happening to me? Why have you done this to me?', 12, 0, 100, 6, 0, 0, 'Risen Dead'),
(@RD_ENTRY, 1, 0, 'I should be dead and to death I will return!', 12, 0, 100, 5, 0, 0, 'Risen Dead'),
(@RD_ENTRY, 2, 0, 'I never asked for this! Leave me alone!', 12, 0, 100, 5, 0, 0, 'Risen Dead'),
(@RD_ENTRY, 3, 0, 'What magic is this that turns back the hand of death?', 12, 0, 100, 6, 0, 0, 'Risen Dead'),
(@RD_ENTRY, 4, 0, 'If the Banshee Queen has offered me this chance, I will gladly serve.', 12, 0, 100, 1, 0, 0, 'Risen Dead'),
(@RD_ENTRY, 5, 0, 'This is Lady Sylvanas''s doing?', 12, 0, 100, 6, 0, 0, 'Risen Dead'),
(@RD_ENTRY, 6, 0, 'What use has the Dark Lady for me?', 12, 0, 100, 6, 0, 0, 'Risen Dead'),
(@RD_ENTRY, 7, 0, 'I... I don''t remember... Why have you done this?', 12, 0, 100, 6, 0, 0, 'Risen Dead'),
(@RD_ENTRY, 8, 0, '%s becomes enraged!', 16, 0, 100, 0, 0, 0, 'Risen Dead');
DELETE FROM `waypoint_data` WHERE `id` IN (@A_ENTRY*100, @RD_ENTRY*100, (@RD_ENTRY*100)+1);
INSERT INTO `waypoint_data`(`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`) VALUES
(@A_ENTRY*100, 1, 1674.95, 1683.32, 139.203, 0, 0, 0),
(@A_ENTRY*100, 2, 1676.98, 1681.87, 138.799, 0, 0, 0),
(@A_ENTRY*100, 3, 1679.82, 1681.69, 138.267, 0, 0, 0),
(@A_ENTRY*100, 4, 1681.72, 1683.03, 137.959, 0, 0, 0),
(@A_ENTRY*100, 5, 1683.93, 1685.34, 137.606, 2.383, 10000, 0),
(@A_ENTRY*100, 6, 1686.35, 1686.91, 137.154, 0, 0, 0),
(@A_ENTRY*100, 7, 1688.19, 1690.18, 136.926, 0, 0, 0),
(@A_ENTRY*100, 8, 1689.24, 1693.53, 136.947, 0, 0, 0),
(@A_ENTRY*100, 9, 1691.95, 1695.14, 136.673, 0, 0, 0),
(@A_ENTRY*100, 10, 1695.06, 1695.14, 136.008, 0, 0, 0),
(@A_ENTRY*100, 11, 1697.34, 1693.19, 135.244, 0, 0, 0),
(@A_ENTRY*100, 12, 1698, 1691.2, 135.049, 0, 0, 0),
(@A_ENTRY*100, 13, 1698.51, 1688.87, 134.864, 3.184, 10000, 0),
(@A_ENTRY*100, 14, 1698.55, 1685.78, 134.671, 0, 0, 0),
(@A_ENTRY*100, 15, 1698.47, 1683.06, 134.616, 0, 0, 0),
(@A_ENTRY*100, 16, 1697.66, 1680.8, 134.579, 3.011, 10000, 0),
(@A_ENTRY*100, 17, 1699.37, 1684.32, 134.532, 0, 0, 0),
(@A_ENTRY*100, 18, 1702.7, 1690.31, 134.334, 0, 0, 0),
(@A_ENTRY*100, 19, 1704.96, 1695.01, 134.167, 0, 0, 0),
(@A_ENTRY*100, 20, 1706.95, 1696.84, 133.934, 0, 0, 0),
(@A_ENTRY*100, 21, 1707.11, 1700.6, 134.225, 1.44, 10000, 0),
(@A_ENTRY*100, 22, 1710.43, 1700.99, 133.2, 0, 0, 0),
(@A_ENTRY*100, 23, 1716.15, 1701.67, 131.765, 0, 0, 0),
(@A_ENTRY*100, 24, 1721.19, 1702.27, 130.121, 0, 0, 0),
(@A_ENTRY*100, 25, 1726.76, 1703.41, 128.53, 0, 0, 0),
(@A_ENTRY*100, 26, 1730.24, 1703.47, 128.115, 0, 0, 0),
(@A_ENTRY*100, 27, 1733.31, 1703.32, 128.178, 1.44, 10000, 0),
(@A_ENTRY*100, 28, 1726.35, 1702.37, 128.503, 0, 0, 0),
(@A_ENTRY*100, 29, 1719.89, 1698.69, 130.855, 0, 0, 0),
(@A_ENTRY*100, 30, 1710.81, 1691.48, 133.626, 0, 0, 0),
(@A_ENTRY*100, 31, 1703.63, 1685.48, 134.024, 0, 0, 0),
(@A_ENTRY*100, 32, 1697.91, 1681.32, 134.569, 3.235, 10000, 0),
(@A_ENTRY*100, 33, 1698.1, 1683.77, 134.69, 0, 0, 0),
(@A_ENTRY*100, 34, 1698.15, 1688.19, 134.898, 3.027, 10000, 0),
(@A_ENTRY*100, 35, 1699.09, 1691.26, 134.879, 0, 0, 0),
(@A_ENTRY*100, 36, 1701.96, 1695.36, 134.619, 0, 0, 0),
(@A_ENTRY*100, 37, 1705.86, 1696.63, 134.068, 0, 0, 0),
(@A_ENTRY*100, 38, 1706.74, 1700.46, 134.263, 1.378, 10000, 0),
(@A_ENTRY*100, 39, 1700.76, 1698.66, 135.131, 0, 0, 0),
(@A_ENTRY*100, 40, 1696.39, 1697.44, 135.9, 0, 0, 0),
(@A_ENTRY*100, 41, 1691.82, 1695.35, 136.723, 0, 0, 0),
(@A_ENTRY*100, 42, 1687.56, 1692.08, 137.147, 0, 0, 0),
(@A_ENTRY*100, 43, 1686.83, 1690.55, 137.241, 0, 0, 0),
(@RD_ENTRY*100, 1, 1702, 1677.55, 134.298, 0, 0, 1),
(@RD_ENTRY*100, 2, 1693.66, 1670.64, 134.032, 0, 0, 1),
(@RD_ENTRY*100, 3, 1686.21, 1661.74, 133.171, 0, 0, 1),
(@RD_ENTRY*100, 4, 1681.66, 1655.15, 136.316, 0, 0, 1),
(@RD_ENTRY*100, 5, 1676.76, 1643.16, 139.253, 0, 0, 1),
(@RD_ENTRY*100, 6, 1669.11, 1631.08, 139.495, 0, 0, 1),
(@RD_ENTRY*100, 7, 1664.203, 1620.63, 140.526, 0, 0, 1),
((@RD_ENTRY*100)+1, 1, 1695.44, 1672.29, 133.945, 0, 0, 0),
((@RD_ENTRY*100)+1, 2, 1691.08, 1660.22, 131.406, 0, 0, 0),
((@RD_ENTRY*100)+1, 3, 1709.56, 1643.45, 124.713, 0, 0, 0),
((@RD_ENTRY*100)+1, 4, 1723.48, 1633.31, 120.426, 0, 0, 0);


SET @UM_ENTRY = 1568;
SET @RR_ENTRY = 50414;
SET @D1_ENTRY = 49141;
SET @MR_ENTRY = 49230;
SET @LV_ENTRY = 38895;
SET @VM_ENTRY = 49231;
SET @MZ_ENTRY = 1501;
SET @C_A_ENTRY = 49129;
SET @C_A_GUID = 988269;
SET @C_D_ENTRY = 49128;
SET @C_D_GUID = 204125;

UPDATE `creature_template` SET `AIName`="", `scriptname`="npc_undertaker_mordo" WHERE `entry`=@UM_ENTRY;
UPDATE `creature_template` SET `AIName`="",`equipment_id`=@D1_ENTRY,`ScriptName`="npc_darnell_script_1" WHERE `entry`=@D1_ENTRY;
UPDATE `creature_template` SET `AIName`="", `scriptname`="npc_marshal_redpath", `gossip_menu_id`=12485 WHERE `entry`=@MR_ENTRY;
UPDATE `creature_template` SET `AIName`="", `scriptname`="npc_lilian_voss" WHERE `entry`=@LV_ENTRY;
UPDATE `creature_template` SET `AIName`="", `scriptname`="npc_valdred_moray", `gossip_menu_id`=12488 WHERE `entry`=@VM_ENTRY;
UPDATE `creature_template` SET `AIName`="", `scriptname`="npc_mindless_zombie" WHERE `entry`=@MZ_ENTRY;
UPDATE `creature_template_addon` SET `bytes1`=8, `emote`=0 WHERE `entry`=@VM_ENTRY;
DELETE FROM `creature_equip_template` WHERE (`entry`=@D1_ENTRY);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(@D1_ENTRY, 1895, 1957, 0);
UPDATE `creature_template` SET `unit_flags`=32776, `faction_A`=5, `faction_H`=5 WHERE `entry`=@D1_ENTRY;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (@C_A_ENTRY, @C_D_ENTRY);
UPDATE `creature` SET `MovementType`=1,`spawndist`=2 WHERE `id`=@MZ_ENTRY;
UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid` IN (@C_A_GUID, @C_D_GUID);
UPDATE `creature_template_addon` SET `path_id`=@C_A_GUID WHERE `entry`=@C_A_ENTRY;
UPDATE `creature_template_addon` SET `path_id`=@C_D_GUID WHERE `entry`=@C_D_ENTRY;
UPDATE `creature` SET `orientation`=5.8555 WHERE `id`=@MR_ENTRY;
DELETE FROM `creature_text` WHERE (`entry`=@D1_ENTRY);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@D1_ENTRY, 0, 0, 'Greetings.', 12, 0, 100, 1, 0, 0, 'Darnell'),
(@D1_ENTRY, 1, 0, 'The shadow grave is in this direction. Follow me.', 12, 0, 100, 1, 0, 0, 'Darnell'),
(@D1_ENTRY, 2, 0, 'This way!', 12, 0, 100, 1, 0, 0, 'Darnell'),
(@D1_ENTRY, 3, 0, 'Let''s see now... WHERE could they be...', 12, 0, 100, 1, 0, 0, 'Darnell'),
(@D1_ENTRY, 4, 0, 'Maybe they''re over here?', 12, 0, 100, 1, 0, 0, 'Darnell'),
(@D1_ENTRY, 5, 0, 'Nice work! You''ve found them. Let''s bring these back to Mordo.', 12, 0, 100, 1, 0, 0, 'Darnell'),
(@D1_ENTRY, 6, 0, 'I saw someone up there whose jaw fell off. I wonder if Mordo can fix him up?', 12, 0, 100, 1, 0, 0, 'Darnell');
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@RR_ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@UM_ENTRY, @RR_ENTRY, @D1_ENTRY, @MR_ENTRY, @LV_ENTRY, @VM_ENTRY) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@RR_ENTRY*100, @D1_ENTRY*100, (@D1_ENTRY*100)+1) AND `source_type`=9;
DELETE FROM `waypoints` WHERE entry IN (@D1_ENTRY*100, @RR_ENTRY*100, 5037402, 5037401);
DELETE FROM `waypoint_data` WHERE `id` IN (@RR_ENTRY*100, (@RR_ENTRY*100)+1, @MR_ENTRY*100, @LV_ENTRY*100, @VM_ENTRY*100, @C_A_GUID, @C_D_GUID);
INSERT INTO `waypoint_data`(`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`) VALUES
((@RR_ENTRY*100)+1, 1, 1691.29, 1675.85, 135.295, 0, 0, 0),
((@RR_ENTRY*100)+1, 2, 1690.59, 1661.87, 131.92, 0, 0, 0),
((@RR_ENTRY*100)+1, 3, 1719.38, 1633.98, 121.065, 0, 0, 0),
(@RR_ENTRY*100, 1, 1694.16, 1677.08, 134.786, 0, 0, 0),
(@RR_ENTRY*100, 2, 1691.29, 1675.84, 135.295, 0, 0, 0),
(@MR_ENTRY*100, 1, 1752.72, 1626.94, 116.001, 0, 0, 1),
(@MR_ENTRY*100, 2, 1758.17, 1604.42, 110.959, 0, 0, 1),
(@MR_ENTRY*100, 3, 1756.88, 1585.49, 111.543, 0, 0, 1),
(@MR_ENTRY*100, 4, 1751.61, 1564.8, 113.489, 0, 0, 1),
(@MR_ENTRY*100, 5, 1752.27, 1548.56, 113.92, 0, 0, 1),
(@MR_ENTRY*100, 6, 1763.14, 1538.02, 114.346, 0, 0, 1),
(@LV_ENTRY*100, 1, 1752.21, 1652.93, 119.551, 0, 0, 1),
(@LV_ENTRY*100, 2, 1752.72, 1635.44, 116.883, 0, 0, 1),
(@LV_ENTRY*100, 3, 1755.51, 1611.9, 112.498, 0, 0, 1),
(@LV_ENTRY*100, 4, 1756.03, 1591.45, 111.872, 0, 0, 1),
(@LV_ENTRY*100, 5, 1755.69, 1570.22, 112.78, 0, 0, 1),
(@LV_ENTRY*100, 6, 1751.78, 1550.02, 114.082, 0, 0, 1),
(@LV_ENTRY*100, 7, 1762.13, 1539.01, 114.289, 0, 0, 1),
(@VM_ENTRY*100, 1, 1728.97, 1696.68, 127.857, 0, 0, 1),
(@VM_ENTRY*100, 2, 1716.91, 1690.64, 132.728, 0, 0, 1),
(@VM_ENTRY*100, 3, 1707.91, 1685.12, 133.644, 0, 0, 1),
(@VM_ENTRY*100, 4, 1695.44, 1677.7, 134.632, 0, 0, 1),
(@C_A_GUID, 1, 1725.01, 1667.63, 137.94, 0, 0, 0),
(@C_A_GUID, 2, 1710.03, 1656.84, 140.835, 0, 0, 0),
(@C_A_GUID, 3, 1698.03, 1652.92, 146.397, 0, 0, 0),
(@C_A_GUID, 4, 1702.94, 1634.51, 140.377, 0, 0, 0),
(@C_A_GUID, 5, 1716.34, 1617.19, 134.848, 0, 0, 0),
(@C_A_GUID, 6, 1731.1, 1618.59, 133.88, 0, 0, 0),
(@C_A_GUID, 7, 1747.64, 1639.03, 128.976, 0, 0, 0),
(@C_A_GUID, 8, 1746.05, 1657.5, 131.738, 0, 0, 0),
(@C_A_GUID, 9, 1744.97, 1676.7, 139.807, 0, 0, 0),
(@C_A_GUID, 10, 1737.38, 1689.39, 142.346, 0, 0, 0),
(@C_A_GUID, 11, 1721.84, 1699.9, 145.727, 0, 0, 0),
(@C_A_GUID, 12, 1702.88, 1701.67, 147.952, 0, 0, 0),
(@C_A_GUID, 13, 1684.23, 1697.14, 151.702, 0, 0, 0),
(@C_A_GUID, 14, 1679.76, 1677.61, 157.186, 0, 0, 0),
(@C_A_GUID, 15, 1688.75, 1665.62, 152.315, 0, 0, 0),
(@C_A_GUID, 16, 1706.31, 1666.57, 144.594, 0, 0, 0),
(@C_A_GUID, 17, 1721.01, 1675.69, 138.709, 0, 0, 0),
(@C_D_GUID, 1, 1757.78, 1593.55, 116.917, 0, 0, 0),
(@C_D_GUID, 2, 1758.89, 1604.89, 127.626, 0, 0, 0),
(@C_D_GUID, 3, 1754.94, 1620.19, 131.002, 0, 0, 0),
(@C_D_GUID, 4, 1741.96, 1635.04, 141.067, 0, 0, 0),
(@C_D_GUID, 5, 1722.93, 1649.94, 144.151, 0, 0, 0),
(@C_D_GUID, 6, 1703.4, 1655.41, 156.222, 0, 0, 0),
(@C_D_GUID, 7, 1683.45, 1647.61, 158.232, 0, 0, 0),
(@C_D_GUID, 8, 1678.86, 1635.12, 154.974, 0, 0, 0),
(@C_D_GUID, 9, 1681.15, 1625.05, 153.188, 0, 0, 0),
(@C_D_GUID, 10, 1699.46, 1616.94, 146.098, 0, 0, 0),
(@C_D_GUID, 11, 1701.61, 1601.05, 142.797, 0, 0, 0),
(@C_D_GUID, 12, 1697.91, 1578.1, 144.346, 0, 0, 0),
(@C_D_GUID, 13, 1705.4, 1557.76, 143.995, 0, 0, 0),
(@C_D_GUID, 14, 1719.17, 1551.01, 136.678, 0, 0, 0),
(@C_D_GUID, 15, 1736.93, 1555, 129.218, 0, 0, 0),
(@C_D_GUID, 16, 1746.94, 1565.07, 123.072, 0, 0, 0),
(@C_D_GUID, 17, 1755.16, 1577.36, 119.816, 0, 0, 0);
UPDATE `gossip_menu_option` SET `action_menu_id`=12487 WHERE `menu_id`=12488;
UPDATE `gossip_menu_option` SET `action_menu_id`=12489 WHERE `menu_id`=12487;
UPDATE `gossip_menu_option` SET `action_menu_id`=0 WHERE `menu_id`=12489;
UPDATE `gossip_menu` SET `text_id`=17569 WHERE `entry`=12488;
UPDATE `gossip_menu` SET `text_id`=17570 WHERE `entry`=12487;
UPDATE `npc_text` SET `text0_0`="I... died?$b$bYes, you're right.  I died.  It was an orc... he cut off my hands, and left me to die.$b$b<Valdred looks down at his hands.>$b$bThese aren't my hands!  THESE AREN'T MY HANDS!" WHERE `ID`=17570;

UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (48624, 25063);
UPDATE `creature_template_addon` SET `bytes1`=5, `bytes2`=1, `emote`=426 WHERE `entry`=8583;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id` IN (44617, 7690, 39251);
UPDATE `creature` SET `MovementType`=1,`spawndist`=2 WHERE `id` IN (3098);

UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=25126, `NextQuestIdChain`=25126 WHERE `Id`=25152;
UPDATE `quest_template` SET `PrevQuestId`=25152, `NextQuestId`=25172, `NextQuestIdChain`=25172 WHERE `Id`=25126;
UPDATE `quest_template` SET `PrevQuestId`=25126, `NextQuestId`=25127, `NextQuestIdChain`=25127 WHERE `Id`=25172;
UPDATE `quest_template` SET `PrevQuestId`=25172, `NextQuestId`=0, `NextQuestIdChain`=0 WHERE `Id`=25127;

UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=25132, `NextQuestIdChain`=25132 WHERE `Id`=25131;
UPDATE `quest_template` SET `PrevQuestId`=25131, `NextQuestId`=25133, `NextQuestIdChain`=25133 WHERE `Id`=25132;
UPDATE `quest_template` SET `PrevQuestId`=25132, `NextQuestId`=25167, `NextQuestIdChain`=25167 WHERE `Id`=25133;
UPDATE `quest_template` SET `PrevQuestId`=25133, `NextQuestId`=25168, `NextQuestIdChain`=25168 WHERE `Id`=25167;
UPDATE `quest_template` SET `PrevQuestId`=25167, `NextQuestId`=25171, `NextQuestIdChain`=25171 WHERE `Id`=25168;
UPDATE `quest_template` SET `PrevQuestId`=25168, `NextQuestId`=0, `NextQuestIdChain`=0 WHERE `Id`=25171;
