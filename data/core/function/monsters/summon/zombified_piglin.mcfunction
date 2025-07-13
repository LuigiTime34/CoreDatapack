#> Summon Zombified Piglin

#: advancement
execute as @a[advancements={core:mobs/zombified_piglin=false}] run advancement grant @s only core:mobs/zombified_piglin

#: summon
summon minecraft:zombified_piglin ~ ~ ~ \
    {CustomName:"Zombified Piglin",CustomNameVisible:1b,Health:35,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.zombified_piglin","monster.ability","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:35},{id:"minecraft:attack_damage",base:0}],PersistenceRequired:1b, \
     equipment:{ \
        head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0,operation:"add_value"}]}}, \
        mainhand: {id:"minecraft:golden_sword",count:1}, \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Zombified Piglin"}}}}

#: set speed
scoreboard players set @n[type=zombified_piglin,tag=monsters.new] monster_speed 23

#: set health
execute as @n[type=zombified_piglin,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=zombified_piglin,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @e[type=zombified_piglin,tag=monsters.new] remove monsters.new
