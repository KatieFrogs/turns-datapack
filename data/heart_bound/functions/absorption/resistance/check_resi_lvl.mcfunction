#devide duration to seconds
scoreboard players operation @s hb.resi_duration /= %20 hb.const
#check level
execute as @s[scores={hb.resi_lvl=0}] run function heart_bound:absorption/resistance/resi_one_test
execute as @s[scores={hb.resi_lvl=1}] run function heart_bound:absorption/resistance/resi_two
execute as @s[scores={hb.resi_lvl=2}] run function heart_bound:absorption/resistance/resi_three
execute as @s[scores={hb.resi_lvl=3}] run function heart_bound:absorption/resistance/resi_four
#remove scoreboard
tag @s remove hb.clear_resi
