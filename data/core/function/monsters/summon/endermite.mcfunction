#> Summon Endermite

#: advancement
execute as @a[advancements={core:mobs/endermite=false}] run advancement grant @s only core:mobs/endermite

#: summon
summon minecraft:endermite ~ ~ ~ \
    {CustomName:"Endermite",CustomNameVisible:1b,Health:30,NoAI:1b, \
     Tags:["moving","monster","monsters.show_health","monsters.endermite","monsters.new_endermite","micro.mob","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:30}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Endermite"}}}}

#: set speed
scoreboard players set @n[type=endermite,tag=monsters.new] monster_speed 34

#: set health
execute as @n[type=endermite,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=endermite,tag=monsters.new] run function core:monsters/health/update

#: enderman check
execute if entity @s[type=enderman] store result score @n[type=endermite,tag=monsters.new_endermite] monster_distance run scoreboard players get @s monster_distance
rotate @n[type=endermite,tag=monsters.new_endermite] ~ ~
tag @n[type=endermite,tag=monsters.new_endermite] remove defense.new_endermite

#: add to wave
scoreboard players add mobs.left game_wave 1

#: remove new tag
tag @e[type=endermite,tag=monsters.new] remove monsters.new