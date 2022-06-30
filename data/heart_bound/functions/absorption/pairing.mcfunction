#pair id
scoreboard players operation @s hb.id = %id_count hb.var
execute as @e[type=minecraft:zombie,tag=need_company,limit=1,sort=random] run tag @s add companion
scoreboard players operation @e[type=minecraft:zombie,tag=companion,limit=1] hb.id = @s hb.id
#remove company tags
execute as @e[tag=need_company] if score @s hb.id = %id_count hb.var run tag @s add paired
execute as @e[tag=need_company] if score @s hb.id = %id_count hb.var run tag @s remove need_company

#set armor
item replace entity @e[type=minecraft:zombie,tag=companion,limit=1] armor.head from entity @s armor.head
item replace entity @e[type=minecraft:zombie,tag=companion,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[type=minecraft:zombie,tag=companion,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[type=minecraft:zombie,tag=companion,limit=1] armor.feet from entity @s armor.feet

#remove armor
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

#remove companion tag
tag @e[type=minecraft:zombie,tag=companion,limit=1] remove companion
#count up
scoreboard players add %id_count hb.var 1
