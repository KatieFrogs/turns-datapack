#points, up to 1023 (1002 is max)
xp set @s 129 levels
xp set @s 0 points
execute if score #points xpcopy matches 512.. run function turns:xpcopy/points/by512
execute if score #points xpcopy matches 256.. run function turns:xpcopy/points/by256
execute if score #points xpcopy matches 128.. run function turns:xpcopy/points/by128
execute if score #points xpcopy matches 64.. run function turns:xpcopy/points/by64
execute if score #points xpcopy matches 32.. run function turns:xpcopy/points/by32
execute if score #points xpcopy matches 16.. run function turns:xpcopy/points/by16
execute if score #points xpcopy matches 8.. run function turns:xpcopy/points/by8
execute if score #points xpcopy matches 4.. run function turns:xpcopy/points/by4
execute if score #points xpcopy matches 2.. run function turns:xpcopy/points/by2
execute if score #points xpcopy matches 1.. run function turns:xpcopy/points/by1

#levels, up to 127
xp set @s 0 levels
execute if score #levels xpcopy matches 64.. run function turns:xpcopy/levels/by64
execute if score #levels xpcopy matches 32.. run function turns:xpcopy/levels/by32
execute if score #levels xpcopy matches 16.. run function turns:xpcopy/levels/by16
execute if score #levels xpcopy matches 8.. run function turns:xpcopy/levels/by8
execute if score #levels xpcopy matches 4.. run function turns:xpcopy/levels/by4
execute if score #levels xpcopy matches 2.. run function turns:xpcopy/levels/by2
execute if score #levels xpcopy matches 1.. run function turns:xpcopy/levels/by1

stopsound @a * minecraft:entity.player.levelup
