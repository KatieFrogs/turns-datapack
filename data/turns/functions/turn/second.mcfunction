scoreboard players remove @s TurnsQueue 1
execute at @s if score @s TurnsQueue matches 1..3 run playsound block.note_block.harp record @s ~ ~ ~ 1 1
execute at @s if score @s TurnsQueue matches 0 run playsound block.note_block.harp record @s ~ ~ ~ 1 2

tag @a[tag=DummyPlayer,limit=1] add NextPlayer
function turns:itemscopy
tag @a[tag=DummyPlayer,limit=1] remove NextPlayer
tp @a[tag=DummyPlayer,limit=1] @s
