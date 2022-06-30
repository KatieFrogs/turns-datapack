#give back armor
function heart_bound:absorption/stop_armor_sound
item replace entity @s armor.head from entity @e[type=minecraft:zombie,tag=return,limit=1] armor.head
item replace entity @s armor.chest from entity @e[type=minecraft:zombie,tag=return,limit=1] armor.chest
item replace entity @s armor.legs from entity @e[type=minecraft:zombie,tag=return,limit=1] armor.legs
item replace entity @s armor.feet from entity @e[type=minecraft:zombie,tag=return,limit=1] armor.feet
function heart_bound:absorption/stop_armor_sound

#return resistance
function heart_bound:absorption/resistance/check_resi_lvl

#say good bye
tp @e[type=minecraft:zombie,tag=return,limit=1] ~ -100 ~
kill @e[type=minecraft:zombie,tag=return,limit=1]
#remove scoreboards
scoreboard players reset @s hb.id
tag @s remove return
tag @s remove paired
scoreboard players remove %id_count hb.var 1
