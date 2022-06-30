schedule clear turns:tick

scoreboard objectives remove TurnsQueue
scoreboard objectives remove TurnsSpectate
scoreboard objectives setdisplay sidebar
scoreboard objectives remove t
scoreboard objectives remove setspawn
tag @a remove LastPlayer
tag @a remove NextPlayer
tag @a remove CurrentPlayer
tag @a remove TurnsQueue
kill @a[tag=DummyPlayer]
kill @e[tag=TurnsSpawn]
tag @a remove DummyPlayer
gamemode creative @a

execute if score #doImmediateRespawn TurnsTick matches 0 run gamerule doImmediateRespawn false
execute if score #keepInventory TurnsTick matches 0 run gamerule keepInventory false
scoreboard objectives remove TurnsTick

function heart_bound:uninstall
