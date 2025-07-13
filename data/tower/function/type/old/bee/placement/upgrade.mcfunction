$place template tower:bee/upgrade$(building) ~$(x_offset) ~ ~$(z_offset) $(rotation)
$data modify entity @n[tag=$(building)] data.x_offset set from entity @s data.x_offset
$data modify entity @n[tag=$(building)] data.z_offset set from entity @s data.z_offset
$data modify entity @n[tag=$(building)] data.rotation set from entity @s data.rotation
$scoreboard players set @n[tag=$(building)] game_money $(cost)
kill @s
kill @n[tag=towers.bee_marker]
kill @n[tag=towers.barrel_display]
tag @n[tag=towers.bee_marker,tag=towers.off] remove defense.off
execute as @n[tag=towers.barrel_marker] run function tower:global/rotate_back
execute as @n[tag=towers.barrel_marker] at @s positioned ^ ^ ^1.5 run tp @a[gamemode=adventure] ~ -59 ~
execute as @n[tag=towers.bee_marker,tag=towers.off] run tag @s remove towers.off
playsound minecraft:block.smithing_table.use master @a ~ ~2 ~ 1 0.7
particle minecraft:end_rod ~ ~2 ~ .2 .1 .2 0.5 50
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_stat:1b}}}}]
clear @a *[minecraft:custom_data~{tower_upgrade:1b}]