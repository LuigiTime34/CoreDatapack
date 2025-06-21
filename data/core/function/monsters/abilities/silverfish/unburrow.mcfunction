execute if entity @s[tag=defense-monster] run return run scoreboard players remove @s monster_abilities 40
tp @s ~ ~1 ~
tag @s add defense-monster
data modify entity @s Invulnerable set value 0b
scoreboard players set @s monster_speed 32
data modify entity @s HurtTime set value 10
execute store result score @s monster_damage run data get entity @s Health 10
scoreboard players operation @s monster_damage += silverfish.heal monster_damage
execute store result storage core:silverfish_health health float 0.1 run scoreboard players get @s monster_damage
data modify entity @s Health set from storage core:silverfish_health health
data modify entity @s HurtTime set value 10