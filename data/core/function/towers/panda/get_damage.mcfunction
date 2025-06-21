tag @s add towers.panda_boo_attack
execute store result storage core:panda_damage damage int 1 run scoreboard players get @s towers_panda_boo_damage
execute as @n[tag=monster] run function core:towers/panda/deal_damage with storage core:panda_damage
#execute at @s as @e[tag=monster] if score @s util_uuid = @n[tag=towers.panda_boo] util_uuid run function core:towers/panda/deal_damage with storage core:panda_damage