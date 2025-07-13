#> Summon Big Chicken Jockey

#: playsound
#playsound minecraft:sound.custom.chicken_jockey master @a ~ ~ ~ 10000000000000 0.5

#: summon
summon minecraft:chicken ~ ~ ~ \
    {CustomName:"Big Chicken",CustomNameVisible:0b,Health:65,NoAI:1b,Rotation:[90.0f,0.0f], \
     Tags:["moving","monster","monsters.show_health","monsters.chicken","monsters.jockey","monster.ability","monsters.new","monsters.new_giant_reinforcement"], \
      Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:65},{id:"minecraft:scale",base:2}],PersistenceRequired:1b, \
      equipment:{ \
        body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Big Chicken"}}}, \
      Passengers:[{id:"minecraft:zombie", \
        CustomName:"Big Chicken Jockey",CustomNameVisible:1b,Health:35,NoAI:1b,Rotation:[90.0f,0.0f],IsBaby:0b,Invulnerable:true, \
        Tags:["monsters.big_chicken_jockey","monsters.riding_chicken","monster.ability","monsters.new"], \
        Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:20}],PersistenceRequired:1b, \
        equipment:{ \
            head:{id:"minecraft:iron_helmet",components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:ward"}},count:1}, \
            body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Big Chicken Jockey"}}}}]}

#: set speed
scoreboard players set @n[type=zombie,tag=monsters.new] monster_speed 18
scoreboard players set @n[type=chicken,tag=monsters.new] monster_speed 20

#: set health
execute as @n[type=zombie,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=zombie,tag=monsters.new] run function core:monsters/health/update

execute as @n[type=chicken,tag=monsters.new] store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
execute as @n[type=chicken,tag=monsters.new] run function core:monsters/health/update

#: reinforcements initialize
execute if entity @e[type=giant,tag=monsters.giant] as @n[type=zombie,tag=monsters.new] run function core:monsters/boss/giant/initialize_scores

#: remove new tag
tag @e[type=zombie,tag=monsters.new] remove monsters.new
tag @e[type=chicken,tag=monsters.new] remove monsters.new
