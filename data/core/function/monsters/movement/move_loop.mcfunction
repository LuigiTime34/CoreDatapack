execute at @s if entity @n[type=minecraft:marker,distance=..0.1,tag=defense-intersection] positioned ~ -61 ~ unless block ^ ^ ^-1 minecraft:raw_gold_block as @n[tag=defense-intersection] at @s run tp @n[tag=defense-monster] ~ ~ ~ ~ ~

execute at @s run tp @s[tag=defense-monster] ^ ^ ^0.005

scoreboard players add @s monster_speed_loop 1
scoreboard players add @s monster_distance 1

execute if score @s monster_speed_loop < @s monster_speed run return run function core:monsters/movement/move_loop
scoreboard players reset @s monster_speed_loop