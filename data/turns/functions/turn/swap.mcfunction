# Swap player turns
tp @a[tag=NextPlayer,limit=1] @a[tag=LastPlayer,limit=1]
tag @a[tag=LastPlayer,limit=1] remove CurrentPlayer
tag @a[tag=NextPlayer,limit=1] add CurrentPlayer
gamemode spectator @a[tag=LastPlayer,limit=1]
gamemode survival @a[tag=NextPlayer,limit=1]
scoreboard players set @a[gamemode=spectator] TurnsSpectate 2
execute as @a[tag=LastPlayer,limit=1] run function turns:xpcopy/get
execute as @a[tag=NextPlayer,limit=1] run function turns:xpcopy/copy
tag @a[tag=LastPlayer,limit=1] remove TurnsQueue
tag @a[tag=LastPlayer,limit=1] remove LastPlayer
tag @a[tag=NextPlayer,limit=1] remove NextPlayer
