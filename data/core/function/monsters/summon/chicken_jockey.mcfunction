#> Chicken Jockey

#: advancement
execute as @a[advancements={core:mobs/chicken_jockey=false}] run advancement grant @s only core:mobs/chicken_jockey

#: summon
summon minecraft:chicken ~ ~ ~ \
    {CustomName:"Chicken",CustomNameVisible:0b,Health:50,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.chicken","monsters.jockey","monster.ability","monsters.new"], \
     Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:50}],PersistenceRequired:1b, \
     equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Chicken"}}}, \
     Passengers:[{id:"minecraft:zombie", \
        CustomName:"Baby Zombie",CustomNameVisible:1b,Health:35,NoAI:1b,Rotation:[90.0f,0.0f],IsBaby:1b,Invulnerable:true, \
        Tags:["monsters.baby_zombie","monsters.show_health","monsters.riding_chicken","monster.ability","monsters.new"], \
        Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:35},{id:"minecraft:attack_knockback",base:34}],PersistenceRequired:1b, \
        equipment:{ \
            body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Chicken Jockey"}}}}]}

#: set speed
scoreboard players set @n[type=zombie,tag=monsters.new] monster_speed 34
scoreboard players set @n[type=chicken,tag=monsters.new] monster_speed 20

#: set health
execute as @n[type=zombie,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=zombie,tag=monsters.new] run function core:monsters/health/update

execute as @n[type=chicken,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=chicken,tag=monsters.new] run function core:monsters/health/update

#: remove new tag
tag @e[type=zombie,tag=monsters.new] remove monsters.new
tag @e[type=chicken,tag=monsters.new] remove monsters.new
