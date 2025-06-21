execute if data entity @s interaction at @s unless entity @n[distance=..3.5,tag=towers.panda_marker] on target if predicate core:holding_panda positioned ~ -59 ~ run function core:towers/panda/placement/panda_init
 execute if data entity @s interaction at @s unless entity @n[distance=..3.5,tag=towers.bee_center] on target if predicate core:holding_bee positioned ~ -59 ~ run function core:towers/bee/placement/bee_init
 execute if data entity @s interaction at @s unless entity @n[distance=..3.5,tag=towers.storm_marker] on target if predicate core:holding_storm positioned ~ -59 ~ run function core:towers/storm/placement/storm_init
 
 #: cleanup interaction data and positioning
 execute if data entity @s interaction run data remove entity @s interaction
 execute at @s if entity @n[distance=..3.5,tag=towers.barrel_marker] run tp @s ~ -60 ~