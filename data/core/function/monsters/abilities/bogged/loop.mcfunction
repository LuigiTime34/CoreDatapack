#> Bogged Loop

#: passive heal
scoreboard players add @s monster_abilities 1
execute if score @s monster_abilities matches 20 run function core:monsters/abilities/bogged/heal

#: double speed particle
execute if score @s monster_speed matches 38 at @s run particle dust_plume ^ ^ ^-0.15 0.15 0.05 0.15 0.005 2

#: spider ridable exception
execute if score @s monster_speed matches 38 if score @s monster_health matches 400..800 run tag @s add monsters.spider_ridable

#: double speed at half health
execute if score @s monster_speed matches 38 if score @s monster_health matches 400..800 run scoreboard players set @s monster_speed 19
execute if score @s monster_speed matches 19 if score @s monster_health matches 0..399 run function core:monsters/abilities/bogged/speed
