advancement revoke @s only core:internal/detect_firework_click
execute as @n[type=minecraft:firework_rocket] unless data entity @s FireworksItem.components."minecraft:custom_data" run return fail
data modify storage core:tower_place temp.func set from entity @n[type=minecraft:firework_rocket] FireworksItem.components."minecraft:custom_data".func
execute as @n[type=minecraft:firework_rocket] at @s run function core:towers/macro with storage core:tower_place temp
data remove storage core:tower_place temp.func