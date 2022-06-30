# /trigger setspawn
kill @e[tag=TurnsSpawn]
summon marker ~ ~ ~ {Tags:["TurnsSpawn"]}
scoreboard players reset @s setspawn
