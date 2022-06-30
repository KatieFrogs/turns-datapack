execute unless entity @e[tag=TurnsSpawn] at @a[limit=1] run summon marker ~ ~0.5 ~ {Tags:["TurnsSpawn"]}
gamemode spectator @a[tag=!CurrentPlayer]

scoreboard objectives add TurnsTick dummy
execute store result score #doImmediateRespawn TurnsTick run gamerule doImmediateRespawn
execute store result score #keepInventory TurnsTick run gamerule keepInventory

gamerule doImmediateRespawn true
gamerule keepInventory true

scoreboard objectives add TurnsQueue dummy "Queue"
scoreboard objectives add TurnsSpectate dummy
scoreboard objectives setdisplay sidebar TurnsQueue
scoreboard objectives add t trigger
scoreboard objectives add setspawn trigger
scoreboard players set #20 TurnsTick 20
