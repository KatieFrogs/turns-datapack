execute as @e[tag=TurnsWorldSpawn] at @s run function turns:spawn/remove
forceload add ~ ~
summon marker ~ ~0.5 ~ {Tags:["TurnsWorldSpawn"]}
