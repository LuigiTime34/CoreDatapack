#> Summon Bogged

#: advancement
execute as @a[advancements={core:mobs/bogged=false}] run advancement grant @s only core:mobs/bogged

#: summon
summon minecraft:bogged ~ ~ ~ \
    {CustomName:"Bogged",CustomNameVisible:1b,Health:80,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.bogged","monsters.spider_ridable","monster.ability","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:80}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Bogged"}}}}

#: set speed
scoreboard players set @n[type=bogged,tag=monsters.new] monster_speed 19

#: set health
execute as @n[type=bogged,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=bogged,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @e[type=bogged,tag=monsters.new] remove monsters.new
