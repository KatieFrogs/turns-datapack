schedule function heart_bound:tick 1t

##main loop
#hearts
execute if score %state hb.var matches 0 run function heart_bound:hearts/check_health
#afterlife
execute if score %state hb.var matches 1 run function heart_bound:hearts/afterlife
#absorption effect
execute if score %absorption_opt hb.var matches 1 as @a run function heart_bound:absorption/check_effect
#check for slimes
execute as @e[type=minecraft:area_effect_cloud,tag=damage,nbt={Age:5}] run function heart_bound:absorption/clear_slime
#check for death
execute as @a if score @s hb.death matches 1.. run function heart_bound:hearts/death
#yeah...
function heart_bound:hearts/reset_scores
