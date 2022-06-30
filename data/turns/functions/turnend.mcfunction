# If the player has no turn time left, give it to the dummy
tag @s add LastPlayer
tag @a[tag=DummyPlayer,limit=1] add NextPlayer
scoreboard players reset @s TurnsQueue
