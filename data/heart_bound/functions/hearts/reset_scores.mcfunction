scoreboard players set @a hb.useGoldApple 0
scoreboard players set @a hb.useEnchApple 0
scoreboard players set @a hb.useTotem 0
execute if score %absorption_opt hb.var matches 1 run effect clear @a[tag=hb.clear_resi] minecraft:resistance
execute if score %hardcore hb.var matches 1 run difficulty hard
