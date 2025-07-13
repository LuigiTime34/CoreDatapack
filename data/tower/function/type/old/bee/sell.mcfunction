execute store result storage core:tower_sell sell_cost int 0.8 run scoreboard players get @s game_money
function tower:type/bee/sell_macro with storage core:tower_sell
scoreboard players reset sell.cost game_money
execute at @s run playsound minecraft:block.anvil.destroy master @a[tag=!towers.selling_all] ~ ~ ~ 0.6 0.9
fill ~-3 ~ ~-3 ~3 ~10 ~3 minecraft:light[level=8] destroy
tag @n[tag=towers.square] remove game.has_tower
kill @e[distance=..4.3,tag=towers.bee_interaction]
kill @s
kill @n[tag=towers.bee_marker]
kill @n[tag=towers.barrel_display]
kill @e[distance=..4.95,tag=towers.bee_deployer]
clear @a *[minecraft:custom_data~{tower_upgrade:1b}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_stat:1b}}}}]