scoreboard players reset @s monster_slowness
scoreboard players operation @s monster_slowness += @s towers_storm_freeze_power
scoreboard players operation @s[tag=defense-ravager] monster_slowness -= ravager.speed monster_speed
scoreboard players operation @s monster_speed -= @s monster_slowness

execute if score @s monster_speed matches 1.. run function core:monsters/movement/move_loop
scoreboard players operation @s monster_speed += @s monster_slowness
scoreboard players set @s[tag=defense-enderman] monster_speed 23