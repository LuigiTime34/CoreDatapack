#> Summon Spider Jockey

#: advancement
execute as @a[advancements={core:mobs/spider=false}] run advancement grant @s only core:mobs/spider

#: summon
summon minecraft:spider ~ ~ ~ \
    {CustomName:"Spider",CustomNameVisible:1b,Health:30,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.spider","monster.ability","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:30}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Spider"}}}}

#: set speed
scoreboard players set @n[type=spider,tag=monsters.new] monster_speed 26

#: set health
execute as @n[type=spider,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=spider,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @n[type=spider,tag=monsters.new] remove monsters.new
