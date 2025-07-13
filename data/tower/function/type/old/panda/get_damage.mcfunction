tag @s add towers.panda_boo_attack
execute store result storage core:panda_damage damage int 1 run scoreboard players get @s towers_panda_boo_damage
execute as @n[tag=monster] run function tower:panda/deal_damage with storage core:panda_damage