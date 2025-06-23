playsound minecraft:entity.zombified_piglin.angry master @a ~ ~ ~ 1.7
tag @s add monsters.reinforcement_piglin
summon minecraft:zombified_piglin ~ ~ ~ {CustomName:"Zombified Piglin",CustomNameVisible:1b,Health:35,NoAI:1b,Rotation:[90.0f,0.0f],Tags:["monster","monsters.show_health","monsters.zombified_piglin","monsters.new_piglin","monsters.new"],Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:35},{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:23},{id:"minecraft:armor",base:0}],PersistenceRequired:1b,equipment:{body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Zombified Piglin"}}}}
execute as @n[tag=monsters.new_piglin] run data modify entity @s Health set from entity @n[tag=monsters.reinforcement_piglin] Health
execute as @n[tag=monsters.new_piglin] run data modify entity @s Rotation set from entity @n[tag=monsters.reinforcement_piglin] Rotation
execute as @n[tag=monsters.new_piglin] store result score @s monster_distance run scoreboard players get @n[tag=monsters.reinforcement_piglin] monster_distance
execute as @n[tag=monsters.new_piglin] at @s run function core:monsters/abilities/zombified_piglin/kb_loop
tag @n[tag=monsters.new_piglin] remove defense-new_piglin
tag @s remove monsters.reinforcement_piglin
scoreboard players add mobs.left game_wave 1