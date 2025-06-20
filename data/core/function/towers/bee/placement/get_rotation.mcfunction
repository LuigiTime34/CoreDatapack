# Check to see if they have enough money first
$execute unless score money. game_money matches $(cost).. run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 2 1
$execute unless score money. game_money matches $(cost).. run tellraw @a[gamemode=adventure] {"text": "Not enough gold!","color": "gold"}
$execute unless score money. game_money matches $(cost).. run clear @a[gamemode=adventure] *[custom_data~{tower_upgrade:1b}]
$execute unless score money. game_money matches $(cost).. at @n[tag=tower-barrel-marker,tag=open] run return run item replace block ~ ~ ~ container.$(slot_to_replace) from block 0 -43 0 container.$(item_slot)

$scoreboard players remove money. game_money $(cost)
$title @a actionbar {"text":"You upgraded your tower for $(cost) gold!","color":"gold"}

function core:scoreboard/get_highest
data modify storage core:tower_rotation x_offset set from entity @s data.x_offset
data modify storage core:tower_rotation z_offset set from entity @s data.z_offset
data modify storage core:tower_rotation rotation set from entity @s data.rotation
$scoreboard players add @s game_money $(cost)
execute store result storage core:tower_rotation cost int 1 run scoreboard players get @s game_money
$data modify storage core:tower_rotation building set value $(building)
function core:towers/bee/placement/upgrade with storage core:tower_rotation