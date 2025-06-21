function core:towers/bee/gold_icon/generate_random_motion

summon minecraft:item ~ ~ ~ {Tags:["tower.gold_item","new"],Item:{id:"minecraft:stick",components:{"minecraft:item_model":"minecraft:gold_ingot"}},Age:5980,PickupDelay:32767,Glowing:1b}

execute as @e[type=minecraft:item,tag=new] run function core:towers/bee/gold_icon/gold_init