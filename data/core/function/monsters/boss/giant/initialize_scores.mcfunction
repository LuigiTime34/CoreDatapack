tag @s add defense-reinforcement_zombie
execute as @n[tag=monsters.new_giant_reinforcement] run data modify entity @s Health set from entity @n[tag=defense-reinforcement_zombie] Health
execute as @n[tag=monsters.new_giant_reinforcement] run data modify entity @s Rotation set from entity @n[tag=defense-reinforcement_zombie] Rotation
execute as @n[tag=monsters.new_giant_reinforcement] store result score @s monster_distance run scoreboard players get @n[tag=defense-reinforcement_zombie] monster_distance
execute at @n[tag=monsters.new_giant_reinforcement] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.6 0.2 2 75
tag @n[tag=monsters.new_giant_reinforcement] remove defense.new_giant_reinforcement
tag @s remove defense-reinforcement_zombie
scoreboard players add mobs.left game_wave 1