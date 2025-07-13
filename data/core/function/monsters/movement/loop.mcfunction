#> Movement Loop

#: turning
execute positioned ^ ^ ^-1.75 if block ~ -61 ~ minecraft:raw_gold_block at @n[type=marker,tag=game.intersection] rotated as @n[type=marker,tag=game.intersection] run return run function core:monsters/movement/loop

#: loop
scoreboard players remove loop. monster_speed_loop 1
execute unless score loop. monster_speed_loop matches -1 positioned ^ ^ ^0.005 run return run function core:monsters/movement/loop

#: end loop
return run tp @s ~ ~ ~ ~ ~