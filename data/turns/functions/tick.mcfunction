schedule function turns:tick 1t

scoreboard players add #tick TurnsTick 1
scoreboard players add @a TurnsTick 1

execute as @a[scores={TurnsQueue=1..},limit=1] run function turns:turn/countdown
execute as @a[scores={TurnsSpectate=1..}] run function turns:spectate

execute as @a[scores={t=1..},limit=1] run function turns:turn/trigger

execute if entity @a[tag=DummyPlayer,limit=1] run scoreboard players enable @a[tag=!TurnsQueue] t

execute unless entity @e[tag=DummyPlayer,limit=1] run function turns:dummy/add

execute as @a unless score @s TurnsTick = #tick TurnsTick run function turns:rejoin

# No one has a turn
execute unless entity @a[tag=CurrentPlayer,limit=1] run function turns:turn/dummy
execute if entity @a[tag=CurrentPlayer,gamemode=spectator,limit=1] run scoreboard players set @a[gamemode=spectator,tag=!CurrentPlayer] TurnsSpectate 2
execute as @a[tag=CurrentPlayer,gamemode=spectator,limit=1] run gamemode survival

function turns:bed/check

execute as @a[tag=CurrentPlayer,tag=!DummyPlayer,scores={TurnsQueue=0},limit=1] run function turns:turn/end

# Bump turn numbers if someone left while waiting in queue
execute as @a[scores={TurnsQueue=..-1}] unless entity @a[scores={TurnsQueue=-1},limit=1] run scoreboard players add @s TurnsQueue 1

execute if entity @a[tag=DummyPlayer,tag=CurrentPlayer,limit=1] as @a[scores={TurnsQueue=-1},limit=1] run function turns:turn/start

execute as @a[tag=NextPlayer,tag=!DummyPlayer,limit=1] run scoreboard players set @s TurnsQueue 18

execute as @a[tag=LastPlayer] run function turns:itemscopy

execute if entity @a[tag=NextPlayer,limit=1] run function turns:turn/swap
