-- Path of Building
--
-- Strength support gems
-- Skill gem data (c) Grinding Gear Games
--
local gems, mod, flag, skill = ...

gems["Added Fire Damage"] = {
	fire = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 20), 
	},
	qualityMods = {
		mod("FireDamage", "INC", 0.5), --"fire_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("PhysicalDamageGainAsFire", "BASE", nil, 0, 0, nil), --"physical_damage_%_to_add_as_fire"
	},
	levels = {
		[1] = { 25, },
		[2] = { 26, },
		[3] = { 27, },
		[4] = { 28, },
		[5] = { 29, },
		[6] = { 30, },
		[7] = { 31, },
		[8] = { 32, },
		[9] = { 33, },
		[10] = { 34, },
		[11] = { 35, },
		[12] = { 36, },
		[13] = { 37, },
		[14] = { 38, },
		[15] = { 39, },
		[16] = { 40, },
		[17] = { 41, },
		[18] = { 42, },
		[19] = { 43, },
		[20] = { 44, },
		[21] = { 45, },
		[22] = { 46, },
		[23] = { 47, },
		[24] = { 48, },
		[25] = { 49, },
		[26] = { 50, },
		[27] = { 51, },
		[28] = { 52, },
		[29] = { 53, },
		[30] = { 54, },
	},
}
gems["Blood Magic"] = {
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		flag("SkillBloodMagic", true), --"base_use_life_in_place_of_mana" = ?
	},
	qualityMods = {
		mod("ManaCost", "INC", -0.5), --"base_mana_cost_-%" = 0.5
	},
	levelMods = {
		[1] = mod("ManaCost", "MORE", nil), 
	},
	levels = {
		[1] = { 145, },
		[2] = { 142, },
		[3] = { 139, },
		[4] = { 137, },
		[5] = { 134, },
		[6] = { 132, },
		[7] = { 129, },
		[8] = { 126, },
		[9] = { 124, },
		[10] = { 121, },
		[11] = { 118, },
		[12] = { 116, },
		[13] = { 113, },
		[14] = { 111, },
		[15] = { 108, },
		[16] = { 105, },
		[17] = { 103, },
		[18] = { 100, },
		[19] = { 97, },
		[20] = { 96, },
		[21] = { 93, },
		[22] = { 90, },
		[23] = { 87, },
		[24] = { 84, },
		[25] = { 81, },
		[26] = { 78, },
		[27] = { 75, },
		[28] = { 72, },
		[29] = { 69, },
		[30] = { 66, },
	},
}
gems["Bloodlust"] = {
	attack = true,
	strength = true,
	support = true,
	melee = true,
	color = 1,
	requireSkillTypes = { 24, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 25), 
		flag("CannotBleed"), --"cannot_cause_bleeding" = ?
	},
	qualityMods = {
		mod("PhysicalDamage", "INC", 0.5, ModFlag.Melee, 0, { type = "Condition", var = "EnemyBleeding" }), --"melee_damage_vs_bleeding_enemies_+%" = 0.5
	},
	levelMods = {
		[1] = mod("PhysicalDamage", "MORE", nil, ModFlag.Melee, 0, { type = "Condition", var = "EnemyBleeding" }), --"support_bloodlust_melee_physical_damage_+%_final_vs_bleeding_enemies"
	},
	levels = {
		[1] = { 40, },
		[2] = { 41, },
		[3] = { 42, },
		[4] = { 43, },
		[5] = { 44, },
		[6] = { 45, },
		[7] = { 46, },
		[8] = { 47, },
		[9] = { 48, },
		[10] = { 49, },
		[11] = { 50, },
		[12] = { 51, },
		[13] = { 52, },
		[14] = { 53, },
		[15] = { 54, },
		[16] = { 55, },
		[17] = { 56, },
		[18] = { 57, },
		[19] = { 58, },
		[20] = { 59, },
		[21] = { 60, },
		[22] = { 61, },
		[23] = { 62, },
		[24] = { 63, },
		[25] = { 64, },
		[26] = { 65, },
		[27] = { 66, },
		[28] = { 67, },
		[29] = { 68, },
		[30] = { 69, },
	},
}
gems["Cast on Melee Kill"] = {
	strength = true,
	support = true,
	melee = true,
	attack = true,
	spell = true,
	trigger = true,
	color = 1,
	requireSkillTypes = { 24, 36, },
	addSkillTypes = { 42, },
	excludeSkillTypes = { 37, 41, 30, 44, },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
		--"cast_linked_spells_on_melee_kill_%" = 100
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, 0, 0, nil), --"damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Damage", "MORE", nil, ModFlag.Spell), --"support_cast_on_melee_kill_spell_damage_+%_final"
	},
	levels = {
		[1] = { 20, },
		[2] = { 21, },
		[3] = { 22, },
		[4] = { 23, },
		[5] = { 24, },
		[6] = { 25, },
		[7] = { 26, },
		[8] = { 27, },
		[9] = { 28, },
		[10] = { 29, },
		[11] = { 30, },
		[12] = { 31, },
		[13] = { 32, },
		[14] = { 33, },
		[15] = { 34, },
		[16] = { 35, },
		[17] = { 36, },
		[18] = { 37, },
		[19] = { 38, },
		[20] = { 39, },
		[21] = { 40, },
		[22] = { 41, },
		[23] = { 42, },
		[24] = { 43, },
		[25] = { 44, },
		[26] = { 45, },
		[27] = { 46, },
		[28] = { 47, },
		[29] = { 48, },
		[30] = { 49, },
	},
}
gems["Cast when Damage Taken"] = {
	strength = true,
	support = true,
	spell = true,
	trigger = true,
	color = 1,
	requireSkillTypes = { 36, },
	addSkillTypes = { 42, },
	excludeSkillTypes = { 37, 41, 30, 44, },
	baseMods = {
		--"cast_on_damage_taken_%" = 100
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, 0, 0, nil), --"damage_+%" = 0.5
	},
	levelMods = {
		--[1] = "cast_on_damage_taken_threshold"
		[2] = mod("Damage", "MORE", nil), --"cast_on_damage_taken_damage_+%_final"
		--[3] = "local_support_gem_max_skill_level_requirement_to_support"
	},
	levels = {
		[1] = { 528, -70, 38, },
		[2] = { 583, -66, 40, },
		[3] = { 661, -62, 42, },
		[4] = { 725, -58, 44, },
		[5] = { 812, -54, 46, },
		[6] = { 897, -50, 48, },
		[7] = { 1003, -46, 50, },
		[8] = { 1107, -42, 52, },
		[9] = { 1221, -38, 54, },
		[10] = { 1354, -34, 56, },
		[11] = { 1485, -30, 58, },
		[12] = { 1635, -26, 60, },
		[13] = { 1804, -22, 62, },
		[14] = { 1980, -18, 64, },
		[15] = { 2184, -14, 65, },
		[16] = { 2394, -10, 66, },
		[17] = { 2621, -6, 67, },
		[18] = { 2874, -2, 68, },
		[19] = { 3142, 2, 69, },
		[20] = { 3272, 6, 70, },
		[21] = { 3580, 10, 72, },
		[22] = { 3950, 14, 74, },
		[23] = { 4350, 18, 76, },
		[24] = { 4780, 22, 78, },
		[25] = { 5240, 26, 80, },
		[26] = { 5730, 30, 82, },
		[27] = { 6250, 34, 84, },
		[28] = { 6800, 38, 86, },
		[29] = { 7380, 42, 88, },
		[30] = { 7990, 46, 90, },
	},
}
gems["Cold to Fire"] = {
	cold = true,
	fire = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 10), 
		mod("SkillColdDamageConvertToFire", "BASE", 50), --"skill_cold_damage_%_to_convert_to_fire" = 50
	},
	qualityMods = {
		mod("ColdDamage", "INC", 0.5), --"cold_damage_+%" = 0.5
		mod("FireDamage", "INC", 0.5), --"fire_damage_+%" = 0.5
	},
	levelMods = {
		[1] =  mod("ColdDamageGainAsFire", "BASE", nil), --"cold_damage_%_to_add_as_fire"
	},
	levels = {
		[1] = { 10, },
		[2] = { 11, },
		[3] = { 12, },
		[4] = { 13, },
		[5] = { 14, },
		[6] = { 15, },
		[7] = { 16, },
		[8] = { 17, },
		[9] = { 18, },
		[10] = { 19, },
		[11] = { 20, },
		[12] = { 21, },
		[13] = { 22, },
		[14] = { 23, },
		[15] = { 24, },
		[16] = { 25, },
		[17] = { 26, },
		[18] = { 27, },
		[19] = { 28, },
		[20] = { 29, },
		[21] = { 30, },
		[22] = { 31, },
		[23] = { 32, },
		[24] = { 33, },
		[25] = { 34, },
		[26] = { 35, },
		[27] = { 36, },
		[28] = { 37, },
		[29] = { 38, },
		[30] = { 39, },
	},
}
gems["Empower"] = {
	low_max_level = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 25), 
	},
	qualityMods = {
		--"local_gem_experience_gain_+%" = 5
	},
	levelMods = {
		[1] = mod("GemProperty", "LIST", { keyword = "active_skill", key = "level", value = nil }), --"supported_active_skill_gem_level_+"
	},
	levels = {
		[1] = { 0, },
		[2] = { 1, },
		[3] = { 2, },
		[4] = { 3, },
		[5] = { 4, },
		[6] = { 5, },
		[7] = { 6, },
		[8] = { 7, },
		[9] = { 8, },
		[10] = { 9, },
	},
}
gems["Endurance Charge on Melee Stun"] = {
	strength = true,
	support = true,
	melee = true,
	attack = true,
	color = 1,
	requireSkillTypes = { 24, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 10), 
		--"gain_endurance_charge_on_melee_stun" = ?
	},
	qualityMods = {
		mod("EnemyStunDuration", "INC", 1), --"base_stun_duration_+%" = 1
	},
	levelMods = {
		[1] = mod("EnemyStunThreshold", "INC", nil), --"base_stun_threshold_reduction_+%"
	},
	levels = {
		[1] = { -0, },
		[2] = { -1, },
		[3] = { -2, },
		[4] = { -3, },
		[5] = { -4, },
		[6] = { -5, },
		[7] = { -6, },
		[8] = { -7, },
		[9] = { -8, },
		[10] = { -9, },
		[11] = { -10, },
		[12] = { -11, },
		[13] = { -12, },
		[14] = { -13, },
		[15] = { -14, },
		[16] = { -15, },
		[17] = { -16, },
		[18] = { -17, },
		[19] = { -18, },
		[20] = { -19, },
		[21] = { -20, },
		[22] = { -21, },
		[23] = { -22, },
		[24] = { -23, },
		[25] = { -24, },
		[26] = { -25, },
		[27] = { -26, },
		[28] = { -27, },
		[29] = { -28, },
		[30] = { -29, },
	},
}
gems["Fire Penetration"] = {
	fire = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("FireDamage", "INC", 0.5), --"fire_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("FirePenetration", "BASE", nil), --"base_reduce_enemy_fire_resistance_%"
	},
	levels = {
		[1] = { 18, },
		[2] = { 19, },
		[3] = { 20, },
		[4] = { 21, },
		[5] = { 22, },
		[6] = { 23, },
		[7] = { 24, },
		[8] = { 25, },
		[9] = { 26, },
		[10] = { 27, },
		[11] = { 28, },
		[12] = { 29, },
		[13] = { 30, },
		[14] = { 31, },
		[15] = { 32, },
		[16] = { 33, },
		[17] = { 34, },
		[18] = { 35, },
		[19] = { 36, },
		[20] = { 37, },
		[21] = { 38, },
		[22] = { 39, },
		[23] = { 40, },
		[24] = { 41, },
		[25] = { 42, },
		[26] = { 43, },
		[27] = { 44, },
		[28] = { 45, },
		[29] = { 46, },
		[30] = { 47, },
	},
}
gems["Fortify"] = {
	attack = true,
	strength = true,
	support = true,
	melee = true,
	color = 1,
	requireSkillTypes = { 24, },
	addSkillTypes = { },
	excludeSkillTypes = { 47, },
	baseMods = {
		mod("ManaCost", "MORE", 10), 
		mod("Misc", "LIST", { type = "Condition", var = "Fortify" }, 0, 0, { type = "Condition", var = "Combat" }), --"chance_to_fortify_on_melee_hit_+%" = 100
		mod("FortifyDuration", "INC", 25), --"fortify_duration_+%" = 25
	},
	qualityMods = {
		mod("FortifyDuration", "INC", 0.5), --"fortify_duration_+%" = 0.5
	},
	levelMods = {
		[1] = mod("PhysicalDamage", "INC", nil, ModFlag.Melee), --"melee_physical_damage_+%"
	},
	levels = {
		[1] = { 25, },
		[2] = { 26, },
		[3] = { 27, },
		[4] = { 28, },
		[5] = { 29, },
		[6] = { 30, },
		[7] = { 31, },
		[8] = { 32, },
		[9] = { 33, },
		[10] = { 34, },
		[11] = { 35, },
		[12] = { 36, },
		[13] = { 37, },
		[14] = { 38, },
		[15] = { 39, },
		[16] = { 40, },
		[17] = { 41, },
		[18] = { 42, },
		[19] = { 43, },
		[20] = { 44, },
		[21] = { 45, },
		[22] = { 46, },
		[23] = { 47, },
		[24] = { 48, },
		[25] = { 49, },
		[26] = { 50, },
		[27] = { 51, },
		[28] = { 52, },
		[29] = { 53, },
		[30] = { 54, },
	},
}
gems["Generosity"] = {
	strength = true,
	support = true,
	aura = true,
	unsupported = true,
}
gems["Increased Burning Damage"] = {
	fire = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 1, 29, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 20), 
	},
	qualityMods = {
		mod("FireDamage", "INC", 0.5, ModFlag.Dot), --"burn_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("FireDamage", "INC", nil, ModFlag.Dot), --"burn_damage_+%"
	},
	levels = {
		[1] = { 40, },
		[2] = { 41, },
		[3] = { 42, },
		[4] = { 43, },
		[5] = { 44, },
		[6] = { 45, },
		[7] = { 46, },
		[8] = { 47, },
		[9] = { 48, },
		[10] = { 49, },
		[11] = { 50, },
		[12] = { 51, },
		[13] = { 52, },
		[14] = { 53, },
		[15] = { 54, },
		[16] = { 55, },
		[17] = { 56, },
		[18] = { 57, },
		[19] = { 58, },
		[20] = { 59, },
		[21] = { 60, },
		[22] = { 61, },
		[23] = { 62, },
		[24] = { 63, },
		[25] = { 64, },
		[26] = { 65, },
		[27] = { 66, },
		[28] = { 67, },
		[29] = { 68, },
		[30] = { 69, },
	},
}
gems["Increased Duration"] = {
	strength = true,
	support = true,
	duration = true,
	color = 1,
	requireSkillTypes = { 12, 55, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("Duration", "INC", 0.5), --"skill_effect_duration_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Duration", "INC", nil), --"skill_effect_duration_+%"
	},
	levels = {
		[1] = { 45, },
		[2] = { 46, },
		[3] = { 47, },
		[4] = { 48, },
		[5] = { 49, },
		[6] = { 50, },
		[7] = { 51, },
		[8] = { 52, },
		[9] = { 53, },
		[10] = { 54, },
		[11] = { 55, },
		[12] = { 56, },
		[13] = { 57, },
		[14] = { 58, },
		[15] = { 59, },
		[16] = { 60, },
		[17] = { 61, },
		[18] = { 62, },
		[19] = { 63, },
		[20] = { 64, },
		[21] = { 65, },
		[22] = { 66, },
		[23] = { 67, },
		[24] = { 68, },
		[25] = { 69, },
		[26] = { 70, },
		[27] = { 71, },
		[28] = { 72, },
		[29] = { 73, },
		[30] = { 74, },
	},
}
gems["Iron Grip"] = {
	projectile = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 48, 56, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		flag("IronGrip"), --"keystone_strong_bowman" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, ModFlag.Projectile), --"projectile_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Damage", "INC", nil, ModFlag.Projectile), --"projectile_damage_+%"
	},
	levels = {
		[1] = { 0, },
		[2] = { 2, },
		[3] = { 4, },
		[4] = { 6, },
		[5] = { 8, },
		[6] = { 10, },
		[7] = { 12, },
		[8] = { 14, },
		[9] = { 16, },
		[10] = { 18, },
		[11] = { 20, },
		[12] = { 22, },
		[13] = { 24, },
		[14] = { 26, },
		[15] = { 28, },
		[16] = { 30, },
		[17] = { 32, },
		[18] = { 34, },
		[19] = { 36, },
		[20] = { 38, },
		[21] = { 40, },
		[22] = { 42, },
		[23] = { 44, },
		[24] = { 46, },
		[25] = { 48, },
		[26] = { 50, },
		[27] = { 52, },
		[28] = { 54, },
		[29] = { 56, },
		[30] = { 58, },
	},
}
gems["Iron Will"] = {
	spell = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 52, 59, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		flag("IronWill"), --"strong_casting" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, ModFlag.Spell, 0, nil), --"spell_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Damage", "INC", nil, ModFlag.Spell, 0, nil), --"spell_damage_+%"
	},
	levels = {
		[1] = { 0, },
		[2] = { 2, },
		[3] = { 4, },
		[4] = { 6, },
		[5] = { 8, },
		[6] = { 10, },
		[7] = { 12, },
		[8] = { 14, },
		[9] = { 16, },
		[10] = { 18, },
		[11] = { 20, },
		[12] = { 22, },
		[13] = { 24, },
		[14] = { 26, },
		[15] = { 28, },
		[16] = { 30, },
		[17] = { 32, },
		[18] = { 34, },
		[19] = { 36, },
		[20] = { 38, },
		[21] = { 40, },
		[22] = { 42, },
		[23] = { 44, },
		[24] = { 46, },
		[25] = { 48, },
		[26] = { 50, },
		[27] = { 52, },
		[28] = { 54, },
		[29] = { 56, },
		[30] = { 58, },
	},
}
gems["Item Quantity"] = {
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 1, 40, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
	},
	qualityMods = {
		mod("LootQuantity", "INC", 0.35), --"base_killed_monster_dropped_item_quantity_+%" = 0.35
	},
	levelMods = {
		[1] = mod("LootQuantity", "INC", nil), --"base_killed_monster_dropped_item_quantity_+%"
	},
	levels = {
		[1] = { 17, },
		[2] = { 18, },
		[3] = { 19, },
		[4] = { 20, },
		[5] = { 21, },
		[6] = { 22, },
		[7] = { 23, },
		[8] = { 24, },
		[9] = { 25, },
		[10] = { 26, },
		[11] = { 27, },
		[12] = { 28, },
		[13] = { 29, },
		[14] = { 30, },
		[15] = { 31, },
		[16] = { 32, },
		[17] = { 33, },
		[18] = { 34, },
		[19] = { 35, },
		[20] = { 36, },
		[21] = { 37, },
		[22] = { 38, },
		[23] = { 39, },
		[24] = { 40, },
		[25] = { 41, },
		[26] = { 42, },
		[27] = { 43, },
		[28] = { 44, },
		[29] = { 45, },
		[30] = { 46, },
	},
}
gems["Knockback"] = {
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		--"knockback_distance_+%" = 50
	},
	qualityMods = {
		--"base_global_chance_to_knockback_%" = 0.5
	},
	levelMods = {
		--[1] = "base_global_chance_to_knockback_%"
	},
	levels = {
		[1] = { 25, },
		[2] = { 26, },
		[3] = { 27, },
		[4] = { 28, },
		[5] = { 29, },
		[6] = { 30, },
		[7] = { 31, },
		[8] = { 32, },
		[9] = { 33, },
		[10] = { 34, },
		[11] = { 35, },
		[12] = { 36, },
		[13] = { 37, },
		[14] = { 38, },
		[15] = { 39, },
		[16] = { 40, },
		[17] = { 41, },
		[18] = { 42, },
		[19] = { 43, },
		[20] = { 44, },
		[21] = { 45, },
		[22] = { 46, },
		[23] = { 47, },
		[24] = { 48, },
		[25] = { 49, },
		[26] = { 50, },
		[27] = { 51, },
		[28] = { 52, },
		[29] = { 53, },
		[30] = { 54, },
	},
}
gems["Less Duration"] = {
	strength = true,
	support = true,
	duration = true,
	color = 1,
	requireSkillTypes = { 12, 55, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 20), 
	},
	qualityMods = {
		mod("Duration", "INC", -0.5), --"skill_effect_duration_+%" = -0.5
	},
	levelMods = {
		[1] = mod("Duration", "MORE", nil), --"support_reduced_duration_skill_effect_duration_+%_final"
		[2] = mod("Damage", "MORE", nil), --"support_reduced_duration_damage_+%_final"
	},
	levels = {
		[1] = { -40, 10, },
		[2] = { -40, 10, },
		[3] = { -41, 11, },
		[4] = { -41, 11, },
		[5] = { -42, 12, },
		[6] = { -42, 12, },
		[7] = { -43, 13, },
		[8] = { -43, 13, },
		[9] = { -44, 14, },
		[10] = { -44, 14, },
		[11] = { -45, 15, },
		[12] = { -45, 15, },
		[13] = { -46, 16, },
		[14] = { -46, 16, },
		[15] = { -47, 17, },
		[16] = { -47, 17, },
		[17] = { -48, 18, },
		[18] = { -48, 18, },
		[19] = { -49, 19, },
		[20] = { -49, 19, },
		[21] = { -50, 20, },
		[22] = { -50, 20, },
		[23] = { -51, 21, },
		[24] = { -51, 21, },
		[25] = { -52, 22, },
		[26] = { -52, 22, },
		[27] = { -53, 23, },
		[28] = { -53, 23, },
		[29] = { -54, 24, },
		[30] = { -54, 24, },
	},
}
gems["Life Gain on Hit"] = {
	attack = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 1, 56, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 50), 
	},
	qualityMods = {
		mod("LifeOnHit", "BASE", 0.5, ModFlag.Attack, 0, nil), --"base_life_gain_per_target" = 0.5
	},
	levelMods = {
		[1] = mod("LifeOnHit", "BASE", nil, ModFlag.Attack, 0, nil), --"base_life_gain_per_target"
	},
	levels = {
		[1] = { 6, },
		[2] = { 8, },
		[3] = { 10, },
		[4] = { 12, },
		[5] = { 14, },
		[6] = { 16, },
		[7] = { 18, },
		[8] = { 20, },
		[9] = { 22, },
		[10] = { 24, },
		[11] = { 26, },
		[12] = { 28, },
		[13] = { 30, },
		[14] = { 32, },
		[15] = { 34, },
		[16] = { 36, },
		[17] = { 38, },
		[18] = { 40, },
		[19] = { 42, },
		[20] = { 44, },
		[21] = { 46, },
		[22] = { 48, },
		[23] = { 50, },
		[24] = { 52, },
		[25] = { 54, },
		[26] = { 56, },
		[27] = { 58, },
		[28] = { 60, },
		[29] = { 62, },
		[30] = { 64, },
	},
}
gems["Life Leech"] = {
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 30), 
		--"life_leech_from_any_damage_permyriad" = 200
	},
	qualityMods = {
		--"life_leech_speed_+%" = 0.5
	},
	levelMods = {
		--[1] = "life_leech_speed_+%"
	},
	levels = {
		[1] = { 0, },
		[2] = { 2, },
		[3] = { 4, },
		[4] = { 6, },
		[5] = { 8, },
		[6] = { 10, },
		[7] = { 12, },
		[8] = { 14, },
		[9] = { 16, },
		[10] = { 18, },
		[11] = { 20, },
		[12] = { 22, },
		[13] = { 24, },
		[14] = { 26, },
		[15] = { 28, },
		[16] = { 30, },
		[17] = { 32, },
		[18] = { 34, },
		[19] = { 36, },
		[20] = { 38, },
		[21] = { 40, },
		[22] = { 42, },
		[23] = { 44, },
		[24] = { 46, },
		[25] = { 48, },
		[26] = { 50, },
		[27] = { 52, },
		[28] = { 54, },
		[29] = { 56, },
		[30] = { 58, },
	},
}
gems["Melee Damage on Full Life"] = {
	melee = true,
	strength = true,
	support = true,
	attack = true,
	color = 1,
	requireSkillTypes = { 24, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 30), 
	},
	qualityMods = {
		mod("PhysicalDamage", "INC", 0.5, ModFlag.Melee), --"melee_physical_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("PhysicalDamage", "MORE", nil, ModFlag.Melee, 0, { type = "Condition", var = "FullLife" }), --"support_melee_physical_damage_+%_final_while_on_full_life"
	},
	levels = {
		[1] = { 30, },
		[2] = { 31, },
		[3] = { 32, },
		[4] = { 33, },
		[5] = { 34, },
		[6] = { 35, },
		[7] = { 36, },
		[8] = { 37, },
		[9] = { 38, },
		[10] = { 39, },
		[11] = { 40, },
		[12] = { 41, },
		[13] = { 42, },
		[14] = { 43, },
		[15] = { 44, },
		[16] = { 45, },
		[17] = { 46, },
		[18] = { 47, },
		[19] = { 48, },
		[20] = { 49, },
		[21] = { 50, },
		[22] = { 51, },
		[23] = { 52, },
		[24] = { 53, },
		[25] = { 54, },
		[26] = { 55, },
		[27] = { 56, },
		[28] = { 57, },
		[29] = { 58, },
		[30] = { 59, },
	},
}
gems["Melee Physical Damage"] = {
	melee = true,
	strength = true,
	support = true,
	attack = true,
	color = 1,
	requireSkillTypes = { 24, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("PhysicalDamage", "INC", 0.5, ModFlag.Melee), --"melee_physical_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("PhysicalDamage", "MORE", nil, ModFlag.Melee), --"support_melee_physical_damage_+%_final"
	},
	levels = {
		[1] = { 30, },
		[2] = { 31, },
		[3] = { 32, },
		[4] = { 33, },
		[5] = { 34, },
		[6] = { 35, },
		[7] = { 36, },
		[8] = { 37, },
		[9] = { 38, },
		[10] = { 39, },
		[11] = { 40, },
		[12] = { 41, },
		[13] = { 42, },
		[14] = { 43, },
		[15] = { 44, },
		[16] = { 45, },
		[17] = { 46, },
		[18] = { 47, },
		[19] = { 48, },
		[20] = { 49, },
		[21] = { 50, },
		[22] = { 51, },
		[23] = { 52, },
		[24] = { 53, },
		[25] = { 54, },
		[26] = { 55, },
		[27] = { 56, },
		[28] = { 57, },
		[29] = { 58, },
		[30] = { 59, },
	},
}
gems["Melee Splash"] = {
	strength = true,
	support = true,
	melee = true,
	attack = true,
	area = true,
	color = 1,
	requireSkillTypes = { 25, },
	addSkillTypes = { 11, },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 60), 
		--"support_melee_splash_damage_+%_final" = 0
		--"melee_splash" = ?
	},
	qualityMods = {
		mod("AreaRadius", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		--[1] = "support_melee_splash_damage_+%_final_for_splash"
		[2] = mod("AreaRadius", "MORE", nil), --"melee_splash_area_of_effect_+%_final"
	},
	levels = {
		[1] = { -35, 0, },
		[2] = { -35, 1, },
		[3] = { -34, 2, },
		[4] = { -34, 3, },
		[5] = { -33, 4, },
		[6] = { -33, 5, },
		[7] = { -32, 6, },
		[8] = { -32, 7, },
		[9] = { -31, 8, },
		[10] = { -31, 9, },
		[11] = { -30, 10, },
		[12] = { -30, 11, },
		[13] = { -29, 12, },
		[14] = { -29, 13, },
		[15] = { -28, 14, },
		[16] = { -28, 15, },
		[17] = { -27, 16, },
		[18] = { -27, 17, },
		[19] = { -26, 18, },
		[20] = { -26, 19, },
		[21] = { -25, 20, },
		[22] = { -25, 21, },
		[23] = { -24, 22, },
		[24] = { -24, 23, },
		[25] = { -23, 24, },
		[26] = { -23, 25, },
		[27] = { -22, 26, },
		[28] = { -22, 27, },
		[29] = { -21, 28, },
		[30] = { -21, 29, },
	},
}
gems["Multistrike"] = {
	attack = true,
	melee = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 28, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 80), 
		--"base_melee_attack_repeat_count" = 2
		mod("Damage", "MORE", -30, ModFlag.Attack), --"support_multiple_attack_damage_+%_final" = -30
	},
	qualityMods = {
		mod("PhysicalDamage", "INC", 0.5, ModFlag.Melee), --"melee_physical_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Speed", "MORE", nil, ModFlag.Attack), --"support_multiple_attacks_melee_attack_speed_+%_final"
	},
	levels = {
		[1] = { 75, },
		[2] = { 76, },
		[3] = { 77, },
		[4] = { 78, },
		[5] = { 79, },
		[6] = { 80, },
		[7] = { 81, },
		[8] = { 82, },
		[9] = { 83, },
		[10] = { 84, },
		[11] = { 85, },
		[12] = { 86, },
		[13] = { 87, },
		[14] = { 88, },
		[15] = { 89, },
		[16] = { 90, },
		[17] = { 91, },
		[18] = { 92, },
		[19] = { 93, },
		[20] = { 94, },
		[21] = { 95, },
		[22] = { 96, },
		[23] = { 97, },
		[24] = { 98, },
		[25] = { 99, },
		[26] = { 100, },
		[27] = { 101, },
		[28] = { 102, },
		[29] = { 103, },
		[30] = { 104, },
	},
}
gems["Ranged Attack Totem"] = {
	bow = true,
	projectile = true,
	strength = true,
	support = true,
	totem = true,
	attack = true,
	duration = true,
	addFlags = {
		totem = true,
	},
	color = 1,
	requireSkillTypes = { 22, },
	addSkillTypes = { 12, 17, 19, 30, },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 100), 
		--"is_totem" = 1
		--"base_totem_duration" = 8000
		--"base_totem_range" = 60
		mod("Speed", "MORE", -30, ModFlag.Attack), --"support_attack_totem_attack_speed_+%_final" = -30
		--"base_skill_is_totemified" = ?
		--"disable_skill_if_melee_attack" = ?
	},
	qualityMods = {
		mod("TotemPlacementSpeed", "INC", 1), --"summon_totem_cast_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("totemLevel", nil), --"totem_support_gem_level"
		[2] = mod("Damage", "MORE", nil), --"support_totem_damage_+%_final"
	},
	levels = {
		[1] = { 8, -35, },
		[2] = { 10, -35, },
		[3] = { 13, -34, },
		[4] = { 17, -34, },
		[5] = { 21, -33, },
		[6] = { 25, -33, },
		[7] = { 29, -32, },
		[8] = { 33, -32, },
		[9] = { 37, -31, },
		[10] = { 40, -31, },
		[11] = { 43, -30, },
		[12] = { 46, -30, },
		[13] = { 49, -29, },
		[14] = { 52, -29, },
		[15] = { 55, -28, },
		[16] = { 58, -28, },
		[17] = { 61, -27, },
		[18] = { 64, -27, },
		[19] = { 67, -26, },
		[20] = { 70, -26, },
		[21] = { 72, -25, },
		[22] = { 74, -25, },
		[23] = { 76, -24, },
		[24] = { 78, -24, },
		[25] = { 80, -23, },
		[26] = { 82, -23, },
		[27] = { 84, -22, },
		[28] = { 86, -22, },
		[29] = { 88, -21, },
		[30] = { 90, -21, },
	},
}
gems["Reduced Mana"] = {
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
	},
	qualityMods = {
		mod("ManaCost", "INC", -0.25), --"base_mana_cost_-%" = 0.25
	},
	levelMods = {
		[1] = mod("ManaCost", "INC", nil), --"base_mana_cost_-%"
	},
	levels = {
		[1] = { -25, },
		[2] = { -25, },
		[3] = { -26, },
		[4] = { -26, },
		[5] = { -27, },
		[6] = { -27, },
		[7] = { -28, },
		[8] = { -28, },
		[9] = { -29, },
		[10] = { -29, },
		[11] = { -30, },
		[12] = { -30, },
		[13] = { -31, },
		[14] = { -31, },
		[15] = { -32, },
		[16] = { -32, },
		[17] = { -33, },
		[18] = { -33, },
		[19] = { -34, },
		[20] = { -34, },
		[21] = { -35, },
		[22] = { -35, },
		[23] = { -36, },
		[24] = { -36, },
		[25] = { -37, },
		[26] = { -37, },
		[27] = { -38, },
		[28] = { -38, },
		[29] = { -39, },
		[30] = { -39, },
	},
}
gems["Spell Totem"] = {
	strength = true,
	support = true,
	totem = true,
	duration = true,
	addFlags = {
		totem = true,
	},
	color = 1,
	requireSkillTypes = { 18, },
	addSkillTypes = { 12, 17, 19, 30, },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 100), 
		--"is_totem" = 1
		--"base_totem_duration" = 8000
		--"base_totem_range" = 60
		mod("Speed", "MORE", -30, ModFlag.Cast), --"support_spell_totem_cast_speed_+%_final" = -30
		--"base_skill_is_totemified" = ?
	},
	qualityMods = {
		mod("TotemPlacementSpeed", "INC", 1), --"summon_totem_cast_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("totemLevel", nil), --"totem_support_gem_level"
		[2] = mod("Damage", "MORE", nil), --"support_totem_damage_+%_final"
	},
	levels = {
		[1] = { 8, -35, },
		[2] = { 10, -35, },
		[3] = { 13, -34, },
		[4] = { 17, -34, },
		[5] = { 21, -33, },
		[6] = { 25, -33, },
		[7] = { 29, -32, },
		[8] = { 33, -32, },
		[9] = { 37, -31, },
		[10] = { 40, -31, },
		[11] = { 43, -30, },
		[12] = { 46, -30, },
		[13] = { 49, -29, },
		[14] = { 52, -29, },
		[15] = { 55, -28, },
		[16] = { 58, -28, },
		[17] = { 61, -27, },
		[18] = { 64, -27, },
		[19] = { 67, -26, },
		[20] = { 70, -26, },
		[21] = { 72, -25, },
		[22] = { 74, -25, },
		[23] = { 76, -24, },
		[24] = { 78, -24, },
		[25] = { 80, -23, },
		[26] = { 82, -23, },
		[27] = { 84, -22, },
		[28] = { 86, -22, },
		[29] = { 88, -21, },
		[30] = { 90, -21, },
	},
}
gems["Stun"] = {
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
	},
	qualityMods = {
		mod("EnemyStunDuration", "INC", 1.5), --"base_stun_duration_+%" = 1.5
	},
	levelMods = {
		[1] = mod("EnemyStunThreshold", "INC", nil), --"base_stun_threshold_reduction_+%"
	},
	levels = {
		[1] = { -30, },
		[2] = { -31, },
		[3] = { -32, },
		[4] = { -33, },
		[5] = { -34, },
		[6] = { -35, },
		[7] = { -36, },
		[8] = { -37, },
		[9] = { -38, },
		[10] = { -39, },
		[11] = { -40, },
		[12] = { -41, },
		[13] = { -42, },
		[14] = { -43, },
		[15] = { -44, },
		[16] = { -45, },
		[17] = { -46, },
		[18] = { -47, },
		[19] = { -48, },
		[20] = { -49, },
		[21] = { -50, },
		[22] = { -51, },
		[23] = { -52, },
		[24] = { -53, },
		[25] = { -54, },
		[26] = { -55, },
		[27] = { -56, },
		[28] = { -57, },
		[29] = { -58, },
		[30] = { -59, },
	},
}
gems["Weapon Elemental Damage"] = {
	attack = true,
	strength = true,
	support = true,
	color = 1,
	requireSkillTypes = { 1, 56, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("ElementalDamage", "INC", 0.5, ModFlag.Weapon), --"weapon_elemental_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("ElementalDamage", "MORE", nil, ModFlag.Weapon), --"support_weapon_elemental_damage_+%_final"
	},
	levels = {
		[1] = { 40, },
		[2] = { 41, },
		[3] = { 42, },
		[4] = { 43, },
		[5] = { 44, },
		[6] = { 45, },
		[7] = { 46, },
		[8] = { 47, },
		[9] = { 48, },
		[10] = { 49, },
		[11] = { 50, },
		[12] = { 51, },
		[13] = { 52, },
		[14] = { 53, },
		[15] = { 54, },
		[16] = { 55, },
		[17] = { 56, },
		[18] = { 57, },
		[19] = { 58, },
		[20] = { 59, },
		[21] = { 60, },
		[22] = { 61, },
		[23] = { 62, },
		[24] = { 63, },
		[25] = { 64, },
		[26] = { 65, },
		[27] = { 66, },
		[28] = { 67, },
		[29] = { 68, },
		[30] = { 69, },
	},
}
