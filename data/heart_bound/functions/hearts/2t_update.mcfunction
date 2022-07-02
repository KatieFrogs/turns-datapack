#check if updated health is ready
execute as @a[tag=effect] run function heart_bound:hearts/check_remove_effects
#recursion
schedule function heart_bound:hearts/2t_update 2t
