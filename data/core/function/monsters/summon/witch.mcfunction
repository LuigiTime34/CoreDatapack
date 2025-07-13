#> Summon Witch

#: advancement
execute as @a[advancements={core:mobs/witch=false}] run advancement grant @s only core:mobs/witch

#: summon
summon minecraft:witch ~ ~ ~ \
    {CustomName:"Witch",CustomNameVisible:1b,Health:50,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.witch","monster.ability","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:50}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Witch"}}}}

#: set speed
scoreboard players set @n[type=witch,tag=monsters.new] monster_speed 21

#: set health
execute as @n[type=witch,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=witch,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @e[type=witch,tag=monsters.new] remove monsters.new
