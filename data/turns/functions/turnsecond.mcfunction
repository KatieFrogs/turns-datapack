# Remove one second from the turn
scoreboard players add #second TurnsTick 1
scoreboard players operation #second TurnsTick %= #20 TurnsTick
execute if score #second TurnsTick matches 0 run scoreboard players remove @s TurnsQueue 1
