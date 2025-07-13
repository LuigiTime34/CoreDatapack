#> Charged Creeper Death Detect

#: share distance
execute on vehicle on passengers store result score @s monster_distance on vehicle run scoreboard players get @s monster_distance

#: detect death
execute on vehicle run return 0

#: dismount
function core:monsters/abilities/chicken_jockey/dismount
