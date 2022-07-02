execute as @e[tag=TurnsSpawn] at @s run function turns:spawn/remove
forceload add ~ ~
summon marker ~ ~ ~ {Tags:["TurnsSpawn"]}
spawnpoint @a ~ ~ ~
setworldspawn ~ ~ ~
