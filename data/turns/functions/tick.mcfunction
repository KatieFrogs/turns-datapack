schedule function turns:tick 1t

scoreboard players add #tick TurnsTick 1
scoreboard players add @a TurnsTick 1

execute as @a[scores={TurnsQueue=1..},limit=1] run function turns:turnsecond
execute as @a[scores={TurnsSpectate=1..}] run function turns:spectate

execute as @a[scores={setspawn=1..},limit=1] run function turns:setspawn
execute as @a[scores={t=1..},limit=1] run function turns:turn

scoreboard players enable @a setspawn
execute if entity @a[tag=DummyPlayer,limit=1] run scoreboard players enable @a[tag=!TurnsQueue] t

function turns:dummy

execute as @a unless score @s TurnsTick = #tick TurnsTick run function turns:rejoin

# No one has a turn
execute unless entity @a[tag=CurrentPlayer,limit=1] run tag @a[tag=DummyPlayer] add CurrentPlayer

execute as @a[tag=CurrentPlayer,tag=!DummyPlayer,scores={TurnsQueue=0},limit=1] run function turns:turnend

# Bump turn numbers if someone left while waiting in queue
execute as @a[scores={TurnsQueue=..-1}] unless entity @a[scores={TurnsQueue=-1},limit=1] run scoreboard players add @s TurnsQueue 1

execute if entity @a[tag=DummyPlayer,tag=CurrentPlayer,limit=1] as @a[scores={TurnsQueue=-1},limit=1] run function turns:turnstart

execute as @a[tag=NextPlayer,tag=!DummyPlayer,limit=1] run scoreboard players set @s TurnsQueue 18

execute as @a[tag=LastPlayer] run function turns:copyitems

execute if entity @a[tag=NextPlayer,limit=1] run function turns:turnswap
