#damage sound
execute at @s if score @s hb.hearts > %global_health hb.var run playsound minecraft:block.glass.break master @s ~ ~ ~ 99 1.5
#set attributes
execute if score %global_health hb.var matches 1 run attribute @s minecraft:generic.max_health base set 1
execute if score %global_health hb.var matches 2 run attribute @s minecraft:generic.max_health base set 2
execute if score %global_health hb.var matches 3 run attribute @s minecraft:generic.max_health base set 3
execute if score %global_health hb.var matches 4 run attribute @s minecraft:generic.max_health base set 4
execute if score %global_health hb.var matches 5 run attribute @s minecraft:generic.max_health base set 5
execute if score %global_health hb.var matches 6 run attribute @s minecraft:generic.max_health base set 6
execute if score %global_health hb.var matches 7 run attribute @s minecraft:generic.max_health base set 7
execute if score %global_health hb.var matches 8 run attribute @s minecraft:generic.max_health base set 8
execute if score %global_health hb.var matches 9 run attribute @s minecraft:generic.max_health base set 9
execute if score %global_health hb.var matches 10 run attribute @s minecraft:generic.max_health base set 10
execute if score %global_health hb.var matches 11 run attribute @s minecraft:generic.max_health base set 11
execute if score %global_health hb.var matches 12 run attribute @s minecraft:generic.max_health base set 12
execute if score %global_health hb.var matches 13 run attribute @s minecraft:generic.max_health base set 13
execute if score %global_health hb.var matches 14 run attribute @s minecraft:generic.max_health base set 14
execute if score %global_health hb.var matches 15 run attribute @s minecraft:generic.max_health base set 15
execute if score %global_health hb.var matches 16 run attribute @s minecraft:generic.max_health base set 16
execute if score %global_health hb.var matches 17 run attribute @s minecraft:generic.max_health base set 17
execute if score %global_health hb.var matches 18 run attribute @s minecraft:generic.max_health base set 18
execute if score %global_health hb.var matches 19 run attribute @s minecraft:generic.max_health base set 19
execute if score %global_health hb.var matches 20 run attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:instant_health 1 5 false
tag @s add effect
