#> Movement Ticking

#: set speed
execute store result score loop. monster_speed_loop run scoreboard players get @s monster_speed
execute if score @s towers_storm_freeze_power matches 3..5 run scoreboard players operation loop. monster_speed_loop -= @s towers_storm_freeze_power

#: update distance
scoreboard players operation @s monster_distance += loop. monster_speed_loop

#: movement loop
execute unless score @s monster_speed matches 0 at @s run function core:monsters/movement/loop

#: reach end
execute at @s if block ~ -60 ~ minecraft:black_concrete run return run function core:monsters/reached_end
