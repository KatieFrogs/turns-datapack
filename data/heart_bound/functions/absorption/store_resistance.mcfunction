#get Level
execute store result score @s hb.resi_lvl run data get entity @s ActiveEffects.[{Id:11b}].Amplifier
#get duration
execute store result score @s hb.resi_duration run data get entity @s ActiveEffects.[{Id:11b}].Duration
#tag
tag @s add hb.clear_resi
