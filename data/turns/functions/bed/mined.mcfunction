function turns:bed/mineremove
function turns:bed/mineadd
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] at @e[tag=TurnsWorldSpawn,limit=1] run function turns:spawn/set
