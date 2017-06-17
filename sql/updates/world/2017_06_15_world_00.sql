-- Malkorok npc script name
UPDATE `creature_template` SET `ScriptName` = 'npc_malkorok_arcing_smash' WHERE `entry` = 71455;

-- Iron Juggernaut script names
UPDATE `creature_template` SET `ScriptName` = 'boss_iron_juggernaut' WHERE `entry` = 71466;
UPDATE `creature_template` SET `ScriptName` = 'npc_iron_juggernaut_cannons' WHERE `entry` = 71484;
UPDATE `creature_template` SET `ScriptName` = 'npc_iron_juggernaut_borer_drill' WHERE `entry` = 71906;
UPDATE `creature_template` SET `ScriptName` = 'npc_iron_juggernaut_borer_drill' WHERE `entry` = 71914;
UPDATE `creature_template` SET `ScriptName` = 'npc_iron_juggernaut_crawler_mine_dummy' WHERE `entry` = 72060;
UPDATE `creature_template` SET `ScriptName` = 'npc_iron_juggernaut_crawler_mine' WHERE `entry` = 72050;
UPDATE `creature_template` SET `ScriptName` = 'npc_iron_juggernaut_cutter_laser' WHERE `entry` = 72026;
UPDATE `creature_template` SET `ScriptName` = 'npc_iron_juggernaut_explosive_tar' WHERE `entry` = 71950;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (144209, 145407, 144315, 144460, 144673, 144718, 144198, 144573, 144918, 144492, 144498);
INSERT INTO `spell_script_names` VALUES
(144209, 'spell_iron_juggernaut_borer_drill'),
(145407, 'spell_iron_juggernaut_mortar_blast_force'),
(144315, 'spell_iron_juggernaut_mortar_blast_aoe'),
(144460, 'spell_iron_juggernaut_scatter_laser_force'),
(144673, 'spell_iron_juggernaut_crawler_mine_aoe'),
(144718, 'spell_iron_juggernaut_detonation_sequence'),
(144198, 'spell_iron_juggernaut_demolisher_cannons_aoe'),
(144573, 'spell_iron_juggernaut_cutter_laser_aoe'),
(144918, 'spell_iron_juggernaut_cutter_laser_dmg'),
(144492, 'spell_iron_juggernaut_explosive_tar_periodic'),
(144498, 'spell_iron_juggernaut_explosive_tar_dmg');
