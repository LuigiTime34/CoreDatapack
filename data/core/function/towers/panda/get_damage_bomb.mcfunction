execute store result storage core:panda_damage damage int 1 run scoreboard players get @s towers_panda_boo_damage
execute store result storage core:panda_damage range int 1 run scoreboard players get @s towers_panda_bomb_range
execute at @e[tag=towers.panda_landing] if score @s util_uuid = @n[tag=towers.panda_landing] util_uuid as @n[tag=towers.panda_landing] at @s run function core:towers/panda/deal_damage_bomb with storage core:panda_damage
kill @s