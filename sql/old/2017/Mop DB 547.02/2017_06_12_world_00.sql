DELETE FROM `spell_script_names` WHERE `ScriptName` IN (142842, 142851, 142986);

INSERT INTO `spell_script_names` VALUES
(142842, 'spell_malkorok_breath_of_yshaarj'),
(142851, 'spell_malkorok_seismic_slam'),
(142986, 'spell_malkorok_imploding_energy_dmg');

UPDATE `creature_template` SET `ScriptName` = 'boss_malkorok' WHERE `entry` = 71454;
UPDATE `creature_template` SET `ScriptName` = 'npc_ancient_miasma' WHERE `entry` = 71513;
UPDATE `creature_template` SET `ScriptName` = 'npc_malkorok_implosion' WHERE `entry` = 71470;
