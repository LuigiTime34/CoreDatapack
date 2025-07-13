#> Zombified Piglin Set Position Loop

#: pushback
execute if entity @e[type=zombified_piglin,tag=monster,distance=..0.6] run scoreboard players remove @s monster_distance 80
execute if entity @e[type=zombified_piglin,tag=monster,distance=..0.6] positioned ^ ^ ^-0.4 run return run function core:monsters/abilities/zombified_piglin/set_position_loop

#: after loop
execute anchored feet run tp @s ~ ~ ~ ~ ~
execute at @s if block ~ -60 ~ minecraft:grass_block run return run tp @s ~ -200 ~
