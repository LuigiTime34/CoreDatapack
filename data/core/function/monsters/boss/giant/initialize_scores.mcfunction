#> Giant Reinforcement Initialize

#: set rotation
data modify entity @s Rotation set from entity @n[type=giant,tag=monsters.giant] Rotation

#: set distance
execute store result score @s monster_distance run scoreboard players get @n[type=giant,tag=monsters.giant] monster_distance

#: particle
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.6 0.2 2 75

#: add to wave
scoreboard players add mobs.left game_wave 1