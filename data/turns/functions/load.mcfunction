execute unless entity @e[tag=TurnsWorldSpawn] run function turns:spawn/worldset
execute unless entity @e[tag=TurnsSpawn] positioned ~ ~0.5 ~ run function turns:spawn/set
gamemode spectator @a[tag=!CurrentPlayer]
gamemode survival @a[tag=CurrentPlayer]
execute if entity @a[tag=CurrentPlayer] run scoreboard players set @a[gamemode=spectator] TurnsSpectate 2
execute unless entity @a[tag=CurrentPlayer] run tp @a @e[tag=TurnsSpawn,limit=1]

scoreboard objectives add TurnsTick dummy
execute unless score #doImmediateRespawn TurnsTick matches 0..1 store result score #doImmediateRespawn TurnsTick run gamerule doImmediateRespawn
execute unless score #keepInventory TurnsTick matches 0..1 store result score #keepInventory TurnsTick run gamerule keepInventory

gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule spawnRadius 1

scoreboard objectives add TurnsQueue dummy "Queue"
scoreboard objectives add TurnsSpectate dummy
scoreboard objectives setdisplay sidebar TurnsQueue
scoreboard objectives add t trigger
scoreboard players set #20 TurnsTick 20

function turns:bed/placeadd
function turns:bed/mineadd
