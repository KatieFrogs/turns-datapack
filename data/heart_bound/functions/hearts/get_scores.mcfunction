#calculate hearts
execute store result score %temp hb.var run data get entity @s AbsorptionAmount 10
#round
scoreboard players operation %round hb.var = %temp hb.var
scoreboard players operation %round hb.var %= %10 hb.const

scoreboard players operation @s hb.absorption = %temp hb.var
scoreboard players operation @s hb.absorption /= %10 hb.const
execute unless score %round hb.var matches 0 run scoreboard players add @s hb.absorption 1

scoreboard players operation @s hb.hearts = @s hb.health
scoreboard players operation @s hb.hearts -= @s hb.absorption
execute if score @s hb.hearts matches 21.. run scoreboard players set @s hb.hearts 20
