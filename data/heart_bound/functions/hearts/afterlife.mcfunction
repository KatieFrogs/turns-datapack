#hardore
execute if score %hardcore hb.var matches 1 as @a[gamemode=!spectator] run gamemode spectator
#survival
execute unless score %hardcore hb.var matches 1 run scoreboard players set %state hb.var 0
