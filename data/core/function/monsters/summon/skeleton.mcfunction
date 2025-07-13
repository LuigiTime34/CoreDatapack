#> Summon Skeleton

#: advancement
execute as @a[advancements={core:mobs/skeleton=false}] run advancement grant @s only core:mobs/skeleton

#: summon
summon minecraft:skeleton ~ ~ ~ \
    {CustomName:"Skeleton",CustomNameVisible:1b,Health:25,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.skeleton","monsters.spider_ridable","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:25}],PersistenceRequired:1b, \
     equipment:{ \
        feet:{id:"minecraft:iron_boots"}, \
        legs:{id:"minecraft:iron_leggings"}, \
        chest:{id:"minecraft:iron_chestplate"}, \
        head:{id:"minecraft:iron_helmet"}, \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Skeleton"}}}}

#: set speed
scoreboard players set @n[type=skeleton,tag=monsters.new] monster_speed 22

#: set health
execute as @n[type=skeleton,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=skeleton,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @e[type=skeleton,tag=monsters.new] remove monsters.new
