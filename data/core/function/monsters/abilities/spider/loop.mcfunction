#> Spider Loop

#: share distance
execute on passengers store result score @s monster_distance on vehicle run scoreboard players get @s monster_distance

#: jockey death detect
execute if entity @s[tag=!monster] on passengers run return 0
execute if entity @s[tag=!monster] run function core:monsters/abilities/spider/activate