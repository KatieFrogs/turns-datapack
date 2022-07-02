# Player rejoins the server
gamemode spectator @s
scoreboard players reset @s TurnsQueue
scoreboard players reset @s TurnsSpectate
tag @s remove TurnsQueue
execute as @s[tag=!DummyPlayer] run tag @s remove CurrentPlayer
execute at @e[tag=TurnsSpawn,limit=1] run spawnpoint @s ~ ~ ~

scoreboard players operation @s TurnsTick = #tick TurnsTick
scoreboard players set @s TurnsSpectate 2
