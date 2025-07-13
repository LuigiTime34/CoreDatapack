#> Summon Zombie

#: advancement
execute as @a[advancements={core:mobs/zombie=false}] run advancement grant @s only core:mobs/zombie

#: summon
summon minecraft:zombie ~ ~ ~ \
    {CustomName:"Zombie",CustomNameVisible:1b,Health:20,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.zombie","monsters.spider_ridable","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:20}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Zombie"}}}}

#: set speed
scoreboard players set @n[type=zombie,tag=monsters.new] monster_speed 18

#: set health
execute as @n[type=zombie,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=zombie,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @e[type=zombie,tag=monsters.new] remove monsters.new