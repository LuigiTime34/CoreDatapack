tag @s add monster
tag @s add monsters.show_health
tag @s add monsters.new
data merge entity @s[tag=!monsters.big_chicken_jockey] {CustomNameVisible:1b,CustomName:"Baby Zombie",equipment:{body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Baby Zombie"}}}}
data merge entity @s[tag=monsters.big_chicken_jockey] {CustomNameVisible:1b,CustomName:"Zombie",equipment:{body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Zombie"}}}}
execute at @s run tp @s ~ -59 ~