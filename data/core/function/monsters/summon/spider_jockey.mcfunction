#> Summon Spider Jockey

#: advancement
execute as @a[advancements={core:mobs/spider=false}] run advancement grant @s only core:mobs/spider
execute as @a[advancements={core:mobs/skeleton=false}] run advancement grant @s only core:mobs/skeleton


#: summon spider
summon minecraft:spider ~ ~ ~ \
    {CustomName:"Spider",CustomNameVisible:1b,Health:30,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.spider","monster.ability","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:30}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Spider"}}}}

#: set health

#: summon skeleton
summon minecraft:skeleton ~ ~ ~ \
    {CustomName:"Spider Jockey",CustomNameVisible:1b,Health:25,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.skeleton","monsters.spider_ridable","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:25}],PersistenceRequired:1b, \
     equipment:{ \
        feet:{id:"minecraft:iron_boots"}, \
        legs:{id:"minecraft:iron_leggings"}, \
        chest:{id:"minecraft:iron_chestplate"}, \
        head:{id:"minecraft:iron_helmet"}, \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Spider Jockey"}}}}

#: mount
execute as @n[type=spider,tag=monsters.new] at @n[type=skeleton,tag=monsters.new] run function core:monsters/abilities/spider/pickup

#: set health
execute as @n[type=spider,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=spider,tag=monsters.new] run function core:monsters/health/update

execute as @n[type=skeleton,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=skeleton,tag=monsters.new] run function core:monsters/health/update

#: set speed
scoreboard players set @n[type=spider,tag=monsters.new] monster_speed 26
scoreboard players set @n[type=skeleton,tag=monsters.new] monster_speed 22

#: add to wave
scoreboard players add mobs.left game_wave 1

#: remove new tag
tag @n[type=spider,tag=monsters.new] remove monsters.new
tag @n[type=skeleton,tag=monsters.new] remove monsters.new
