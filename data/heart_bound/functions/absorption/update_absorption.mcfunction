#set tag
tag @s add inflictor
#update scoreboard
scoreboard players operation %global_absorption hb.var = @s hb.absorption
#set new max health
execute as @a[tag=!inflictor,tag=!damage] if score @s hb.absorption > %global_absorption hb.var run function heart_bound:absorption/damage_player
tag @s remove inflictor
