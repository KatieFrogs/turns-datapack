#kill everyone
effect give @a minecraft:instant_health 1 10 true
#set new state
scoreboard players set %state hb.var 1
#reset death score
scoreboard players set @a hb.death 0
