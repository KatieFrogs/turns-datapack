function turns:bed/placeremove
function turns:bed/placeadd
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned ~ ~0.5 ~ run function turns:spawn/set
