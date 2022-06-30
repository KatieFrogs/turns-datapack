#set tag
tag @s add inflictor
#update scoreboard
scoreboard players operation %global_health hb.var = @s hb.hearts
#set new max health
execute as @a[tag=!inflictor] run function heart_bound:hearts/set_max_health
#remove tag
tag @s remove inflictor
