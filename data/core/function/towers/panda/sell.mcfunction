execute store result storage core:tower_sell sell_cost int 0.8 run scoreboard players get @s game_money
function core:towers/panda/sell_macro with storage core:tower_sell
scoreboard players reset sell.cost game_money
execute at @s run playsound minecraft:block.anvil.destroy master @a[tag=!defense.selling_all] ~ ~ ~ 0.6 0.9
fill ~-3 ~ ~-3 ~3 ~14 ~3 minecraft:light[level=8] destroy
fill ~-3 ~-1 ~-3 ~3 ~ ~3 minecraft:green_concrete replace minecraft:green_concrete_powder
tag @n[tag=defense.tower_square] remove defense.has_tower
kill @s
kill @n[tag=panda-center-marker]
kill @n[tag=tower-barrel-display]
kill @e[distance=..3.5,tag=defense.panda_interaction]
tag @e[distance=..3.5,tag=defense.panda] add dead-panda
execute as @e[tag=dead-panda] at @s run tp @s ~ ~-300 ~
execute as @e[tag=dead-panda] at @s run kill @s
clear @a *[minecraft:custom_data~{tower_upgrade:1b}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_stat:1b}}}}]