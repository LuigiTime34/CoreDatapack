execute if entity @s[tag=monster] run return run scoreboard players remove @s monster_abilities 40
tp @s ~ ~1 ~
tag @s add monster
data modify entity @s Invulnerable set value 0b
scoreboard players set @s monster_speed 32
execute store result score @s monster_damage run data get entity @s Health 10
scoreboard players operation @s monster_damage += silverfish.heal monster_damage
execute store result storage core:silverfish_health health float 0.1 run scoreboard players get @s monster_damage
data modify entity @s Health set from storage core:silverfish_health health
function core:monsters/health/update