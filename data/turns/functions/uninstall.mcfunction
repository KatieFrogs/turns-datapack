schedule clear turns:tick

scoreboard objectives remove TurnsQueue
scoreboard objectives remove TurnsSpectate
scoreboard objectives setdisplay sidebar
scoreboard objectives remove t
tag @a remove LastPlayer
tag @a remove NextPlayer
tag @a remove CurrentPlayer
tag @a remove TurnsQueue
execute if entity @s[type=player] run function turns:dummy/getitems
execute as @a[tag=DummyPlayer] run function turns:dummy/remove
execute as @e[tag=TurnsSpawn] at @s run function turns:spawn/remove
execute at @e[tag=TurnsWorldSpawn,limit=1] run setworldspawn ~ ~ ~
execute as @e[tag=TurnsWorldSpawn] at @s run function turns:spawn/remove
function turns:bed/placeremove
function turns:bed/mineremove
tag @a remove DummyPlayer
gamemode creative @a

execute if score #doImmediateRespawn TurnsTick matches 0 run gamerule doImmediateRespawn false
execute if score #keepInventory TurnsTick matches 0 run gamerule keepInventory false
gamerule spawnRadius 10
scoreboard objectives remove TurnsTick

function heart_bound:uninstall
