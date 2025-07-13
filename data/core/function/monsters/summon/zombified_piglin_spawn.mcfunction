#> Summon Zombified Piglin Spawn

#: summon
summon minecraft:zombified_piglin ~ ~ ~ \
    {CustomName:"Zombified Piglin",CustomNameVisible:1b,Health:35,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.zombified_piglin","monster.ability","monsters.zombified_piglin_spawn","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:35}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Zombified Piglin"}}}}

#: set speed
scoreboard players set @n[type=zombified_piglin,tag=monsters.new] monster_speed 23

#: zombified piglin spawn check
execute if entity @s[type=zombified_piglin,tag=monster] run function core:monsters/abilities/zombified_piglin/spawn_modify

#: set health
execute as @n[type=zombified_piglin,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=zombified_piglin,tag=monsters.new] run function core:monsters/health/update

#: promote
execute if predicate {condition:"random_chance","chance":0.4} as @n[tag=monsters.new] run function core:monsters/abilities/zombified_piglin/promote

#: remove new tag
tag @e[type=zombified_piglin,tag=monsters.new] remove monsters.new
