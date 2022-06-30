#store current max health
execute store result score %temp hb.var run attribute @s minecraft:generic.max_health get
#compare max helath and current health
execute as @s if score @s hb.hearts = %temp hb.var run function heart_bound:hearts/remove_effects
