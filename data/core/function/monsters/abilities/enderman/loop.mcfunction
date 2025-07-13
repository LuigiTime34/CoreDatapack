#> Enderman Loop

#: find enderman
execute store result score marker.id_find monster_enderman_marker run scoreboard players get @s monster_enderman_marker
execute at @s unless function core:monsters/abilities/enderman/find run return run kill @s
