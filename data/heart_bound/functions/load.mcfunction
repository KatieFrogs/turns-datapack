##load
#add scoreboards
scoreboard objectives add hb.var dummy
scoreboard objectives add hb.const dummy
scoreboard objectives add hb.id dummy
scoreboard objectives add hb.death deathCount

scoreboard objectives add hb.health health
scoreboard objectives modify hb.health rendertype hearts
scoreboard objectives setdisplay list hb.health

scoreboard objectives add hb.hearts dummy
scoreboard objectives add hb.absorption dummy

scoreboard objectives add hb.resi_lvl dummy
scoreboard objectives add hb.resi_duration dummy

#scoreboards for absorption checking
scoreboard objectives add hb.useGoldApple minecraft.used:minecraft.golden_apple
scoreboard objectives add hb.useEnchApple minecraft.used:minecraft.enchanted_golden_apple
scoreboard objectives add hb.useTotem minecraft.used:minecraft.totem_of_undying

#set scores
scoreboard players set %id_count hb.var 0
scoreboard players set %10 hb.const 10
scoreboard players set %20 hb.const 20
scoreboard players set %state hb.var 0
#set options
execute unless score %hardcore hb.var matches 0.. run scoreboard players set %hardcore hb.var 0
execute unless score %absorption_opt hb.var matches 0.. run scoreboard players set %absorption_opt hb.var 0
scoreboard players set %absorption_opt hb.var 1
#2t update
schedule function heart_bound:hearts/2t_update 2t
