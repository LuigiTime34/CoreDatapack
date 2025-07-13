#> Summon Silverfish

#: advancement
execute as @a[advancements={core:mobs/silverfish=false}] run advancement grant @s only core:mobs/silverfish

#: summon
summon minecraft:silverfish ~ ~ ~ \
    {CustomName:"Silverfish",CustomNameVisible:1b,Health:30,NoAI:1b,Rotation:[90.0f,0.0f],\
     Tags:["moving","monster","monsters.show_health","monsters.silverfish","monster.ability","micro.mob","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:30}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Silverfish"}}}}

#: set speed
scoreboard players set @n[type=silverfish,tag=monsters.new] monster_speed 32

#: set health
execute as @n[type=silverfish,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=silverfish,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @e[type=silverfish,tag=monsters.new] remove monsters.new
