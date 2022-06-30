# Player rejoins the server
gamemode spectator @s
scoreboard players reset @s TurnsQueue
scoreboard players reset @s TurnsSpectate
tag @s remove TurnsQueue
execute as @s[tag=!DummyPlayer] run tag @s remove CurrentPlayer

scoreboard players operation @s TurnsTick = #tick TurnsTick
