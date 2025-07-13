#> Towers Identify Target

#: filter mounts
execute if entity @s[tag=monsters.has_mob] run return 0

#: target
tag @s add target
scoreboard players operation max. monster_distance > @s monster_distance
