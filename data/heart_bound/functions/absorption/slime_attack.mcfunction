#knockback resistance
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0


#give back armor
scoreboard players operation %lowest_id hb.var = %id_count hb.var
execute as @a if score @s hb.id < %lowest_id hb.var run scoreboard players operation %lowest_id hb.var = @s hb.id
execute as @e[tag=paired] if score @s hb.id = %lowest_id hb.var run tag @s add return
execute as @a[tag=return] run function heart_bound:absorption/return_armor


tag @a remove damage
scoreboard players set %damageing hb.var 0
