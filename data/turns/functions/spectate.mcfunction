# Spectate the current player with a delay
scoreboard players remove @s TurnsSpectate 1
spectate @a[tag=CurrentPlayer,limit=1] @s[scores={TurnsSpectate=0}]
