#> Summon Enderman

#: advancement
execute as @a[advancements={core:mobs/enderman=false}] run advancement grant @s only core:mobs/enderman

#: summon
summon minecraft:enderman ~ ~ ~ \
    {CustomName:"Enderman",CustomNameVisible:1b,Health:100,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["monster","monsters.show_health","monsters.enderman","monsters.new","enderman.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:100}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Enderman"}}}}

summon minecraft:marker ~ ~ ~ {Tags:["monsters.enderman_marker","monster.ability","enderman.new"],Rotation:[90.0f,0.0f]}

#: set speed
scoreboard players set @n[type=enderman,tag=monsters.new] monster_speed 23

#: set health
execute as @n[type=enderman,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=enderman,tag=monsters.new] run function core:monsters/health/update

#: enderman marker
execute unless entity @e[type=enderman,tag=monster,scores={monster_enderman_marker=1..}] run scoreboard players reset marker.id monster_enderman_marker
scoreboard players add marker.id monster_enderman_marker 1

execute as @n[type=enderman,tag=enderman.new] store result score @s monster_enderman_marker run scoreboard players get marker.id monster_enderman_marker
execute as @n[type=marker,tag=enderman.new] store result score @s monster_enderman_marker run scoreboard players get marker.id monster_enderman_marker

tag @e[tag=enderman.new] remove enderman.new

#: remove new tag
tag @e[type=enderman,tag=monsters.new] remove monsters.new