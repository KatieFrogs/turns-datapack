# /trigger t
scoreboard players set @s TurnsQueue 0
execute at @a[scores={TurnsQueue=..-1}] run scoreboard players remove @s TurnsQueue 1
scoreboard players remove @s TurnsQueue 1
tag @s add TurnsQueue
scoreboard players reset @s t
