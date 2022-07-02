tag @s add NextPlayer
execute as @a[tag=DummyPlayer,limit=1] run function turns:itemscopy
tag @s remove NextPlayer
