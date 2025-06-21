tag @a add towers.selling_all
execute as @e[tag=towers.barrel_marker] at @s at @n[distance=..5,tag=towers.panda_marker,tag=!towers.off] run function core:towers/panda/sell
execute as @e[tag=towers.barrel_marker] at @s at @n[distance=..5,tag=towers.storm_marker,tag=!towers.off] run function core:towers/storm/sell
execute as @e[tag=towers.barrel_marker] at @s at @n[distance=..5,tag=towers.bee_center,tag=!towers.off] run function core:towers/bee/sell
tag @a remove towers.selling_all