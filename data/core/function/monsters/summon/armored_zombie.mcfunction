#> Summon Armored Zombie

#: summon
summon minecraft:zombie ~ ~ ~ \
    {CustomName:"Armored Zombie",CustomNameVisible:1b,Health:75,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.armored_zombie","monsters.new_giant_reinforcement","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:75},{id:"minecraft:scale",base:1.5}],PersistenceRequired:1b, \
     equipment:{ \
        feet:{id:"minecraft:iron_boots",components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:flow"}},count:1}, \
        chest:{id:"minecraft:iron_chestplate",components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:vex"}},count:1}, \
        head:{id:"minecraft:iron_helmet",components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:ward"}},count:1}, \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Armored Zombie"}}}}

#: set speed
scoreboard players set @n[type=zombie,tag=monsters.new] monster_speed 20

#: set health
execute as @n[type=zombie,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=zombie,tag=monsters.new] run function core:monsters/health/update

#: reinforcements initialize
execute if entity @e[type=giant,tag=monsters.giant] as @n[type=zombie,tag=monsters.new] run function core:monsters/boss/giant/initialize_scores

#: remove new tag
tag @e[type=zombie,tag=monsters.new] remove monsters.new
