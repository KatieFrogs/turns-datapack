execute as @a run function heart_bound:hearts/get_scores
#absorption
execute if score %absorption_opt hb.var matches 1 as @a unless score %damageing hb.var matches 1 unless score @s hb.absorption = %global_absorption hb.var run function heart_bound:absorption/update_absorption
#health diffrent than gloabal health
execute as @a unless score @s hb.hearts = %global_health hb.var if score @s hb.health matches 1.. run function heart_bound:hearts/update_global_health
