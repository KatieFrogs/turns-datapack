# Dummy died
execute unless entity @e[tag=DummyPlayer,limit=1] at @e[tag=TurnsSpawn] run player ROBOT spawn in spectator
tag ROBOT add DummyPlayer
