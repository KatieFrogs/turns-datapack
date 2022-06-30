# If dummy player has a turn, give it to the first player in TurnsQueue
tag @s add NextPlayer
tag @a[tag=DummyPlayer,limit=1] add LastPlayer
