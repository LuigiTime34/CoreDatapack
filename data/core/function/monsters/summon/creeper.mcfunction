#> Summon Creeper

#: advancement
execute as @a[advancements={core:mobs/creeper=false}] run advancement grant @s only core:mobs/creeper

#: summon
summon minecraft:creeper ~ ~ ~ \
    {CustomName:"Creeper",CustomNameVisible:1b,Health:75,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.creeper","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:75}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Creeper"}}}}

#: set speed
scoreboard players set @n[type=creeper,tag=monsters.new] monster_speed 24

#: set health
execute as @n[type=creeper,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=creeper,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @e[type=creeper,tag=monsters.new] remove monsters.new
