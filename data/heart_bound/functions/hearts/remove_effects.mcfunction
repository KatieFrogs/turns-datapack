#remove instant health
effect clear @s minecraft:instant_health
#return max health to 20
attribute @s minecraft:generic.max_health base set 20
#remove effect tag
tag @s remove effect
