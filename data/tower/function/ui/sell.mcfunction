#> UI Sell

#: get sell cost
execute store result storage core:tower_sell sell_cost int 0.8 run scoreboard players get @s towers_cost
execute store result score @s towers_cost run data get storage core:tower_sell sell_cost
scoreboard players operation money. game_money += @s towers_cost
function core:scoreboard/get_highest

#: announce sell cost
tellraw @a[tag=!towers.selling_all] [{"text":"+","color":"gold"},{score:{name:"@s",objective:"towers_cost"},"color":"gold"},{text:" gold!","color":"gold"}]
title @a[tag=!towers.selling_all] actionbar [{"text":"You sold your tower for ","color":"gold"},{score:{name:"@s",objective:"towers_cost"},"color":"gold"},{text:" gold!","color":"gold"}]

#: sfx
execute at @s run playsound minecraft:block.anvil.destroy master @a[tag=!towers.selling_all] ~ ~ ~ 0.6 0.9

#: remove tower
fill ~-3 ~ ~-3 ~3 ~14 ~3 minecraft:light[level=8] destroy

#: enable tile highlight
data merge entity @n[tag=towers.square] {Tags:["towers.square"],Glowing:true}

#: clear tower entities
kill @n[tag=tower,distance=..5]
kill @e[tag=towers.bee_interaction,distance=..5]
kill @n[tag=towers.barrel_display,distance=..5]
kill @n[tag=towers.storm_rod,distance=..5]
kill @s


#: item cleanup
clear @a *[minecraft:custom_data~{tower_upgrade:1b}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_stat:1b}}}}]
