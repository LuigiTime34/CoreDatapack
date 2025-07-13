tag @a add towers.selling_all
execute as @e[tag=towers.barrel_marker] at @s at @n[distance=..5,tag=towers.panda_marker,tag=!towers.off] run function tower:panda/sell
execute as @e[tag=towers.barrel_marker] at @s at @n[distance=..5,tag=towers.storm_marker,tag=!towers.off] run function tower:type/storm/sell
execute as @e[tag=towers.barrel_marker] at @s at @n[distance=..5,tag=towers.bee_marker,tag=!towers.off] run function tower:bee/sell
tag @a remove towers.selling_all