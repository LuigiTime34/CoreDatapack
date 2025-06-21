tag @e[distance=..3.5,tag=towers.panda] add dead-panda
execute as @e[tag=towers.dead_panda] at @s run tp @s ~ ~-300 ~
execute as @e[tag=towers.dead_panda] at @s run kill @s
kill @n[tag=towers.panda_marker]
kill @e[distance=..3.5,tag=towers.panda_interaction]
$place template core:towers/panda/upgrade$(building) ~$(x_offset) ~ ~$(z_offset) $(rotation)
$data modify entity @n[tag=$(building)] data.x_offset set from entity @s data.x_offset
$data modify entity @n[tag=$(building)] data.z_offset set from entity @s data.z_offset
$data modify entity @n[tag=$(building)] data.rotation set from entity @s data.rotation
$scoreboard players set @n[tag=$(building)] game_money $(cost)
kill @s
kill @n[tag=towers.barrel_display]
execute as @n[tag=towers.barrel_marker] run function core:towers/global/rotate_back
execute as @n[tag=towers.panda] run function core:towers/global/rotate_back
execute as @n[tag=towers.barrel_marker] at @s positioned ^ ^ ^1.5 run tp @p[gamemode=adventure] ~ -59 ~
execute as @n[tag=towers.panda_marker,tag=towers.off] run tag @s remove towers.off
playsound minecraft:block.smithing_table.use master @a ~ ~2 ~ 1 0.7
particle minecraft:end_rod ~ ~2 ~ .2 .1 .2 0.5 50
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_stat:1b}}}}]
clear @a *[minecraft:custom_data~{tower_upgrade:1b}]