execute store result storage core:tower_sell sell_cost int 0.8 run scoreboard players get @s game_money
function tower:panda/sell_macro with storage core:tower_sell
scoreboard players reset sell.cost game_money
execute at @s run playsound minecraft:block.anvil.destroy master @a[tag=!towers.selling_all] ~ ~ ~ 0.6 0.9
fill ~-3 ~ ~-3 ~3 ~14 ~3 minecraft:light[level=8] destroy
fill ~-3 ~-1 ~-3 ~3 ~ ~3 minecraft:green_concrete replace minecraft:green_concrete_powder
tag @n[tag=towers.square] remove game.has_tower
kill @s
kill @n[tag=towers.panda_marker]
kill @n[tag=towers.barrel_display]
kill @e[distance=..3.5,tag=towers.panda_interaction]
tag @e[distance=..3.5,tag=towers.panda] add towers.dead_panda
execute as @e[tag=towers.dead_panda] at @s run tp @s ~ ~-300 ~
execute as @e[tag=towers.dead_panda] at @s run kill @s
clear @a *[minecraft:custom_data~{tower_upgrade:1b}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_stat:1b}}}}]