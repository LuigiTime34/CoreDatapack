#> Summon Iron Golem

#: advancement
execute as @a[advancements={core:mobs/iron_golem=false}] run advancement grant @s only core:mobs/iron_golem

#: summon
summon minecraft:iron_golem ~ ~ ~ \
    {CustomName:"Iron Golem",CustomNameVisible:1b,Health:250,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.iron_golem","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:250},{id:"minecraft:armor",base:10}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Iron Golem"}}}}

#: set speed
scoreboard players set @n[type=iron_golem,tag=monsters.new] monster_speed 23

#: set health
execute as @n[type=iron_golem,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=iron_golem,tag=monsters.new] run function core:monsters/health/update

#: priority targeting
scoreboard players set @n[type=iron_golem,tag=monsters.new] monster_distance 50000

#: remove new tag
tag @e[type=iron_golem,tag=monsters.new] remove monsters.new