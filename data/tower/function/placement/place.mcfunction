#> Tower Placement

#: funds check
$execute unless score money. game_money matches $(cost).. run return run function tower:placement/not_enough_gold
$scoreboard players remove money. game_money $(cost)

#: cost msg
$title @a actionbar {"text":"You placed a tower for $(cost) gold!","color":"gold"}

#: place
fill ~-3 ~12 ~-3 ~3 ~ ~3 light replace barrel destroy
fill ~-3 ~12 ~-3 ~3 ~ ~3 light
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tower_stat:1b}}}}]

$execute if entity @s[y_rotation=135.1..225.0] run place template core:towers/$(tower) ~3 ~ ~3 180
$execute if entity @s[y_rotation=225.1..315.0] run place template core:towers/$(tower) ~-3 ~ ~3 counterclockwise_90
$execute if entity @s[y_rotation=-44.9..45.0] run place template core:towers/$(tower) ~-3 ~ ~-3 none
$execute if entity @s[y_rotation=45.1..135.0] run place template core:towers/$(tower) ~3 ~ ~-3 clockwise_90

#: disable tile highlight
data merge entity @n[tag=towers.square] {Tags:["tile.disabled","towers.square"],Glowing:false}

#: tag replace
$data merge entity @n[tag=tower,distance=..1] {Tags:["tower","towers.$(tag)_marker","towers.$(upgrade)"]}

#: tower cost
$scoreboard players add @n[tag=towers.barrel_marker] towers_cost $(cost)

#: vfx and sfx
playsound minecraft:block.smithing_table.use master @a ~ ~2 ~ 1 0.7
particle minecraft:end_rod ~ ~2 ~ .2 .1 .2 0.5 50
