#> Enderman Move Marker

#: move marker
execute store result score marker.id_find monster_enderman_marker run scoreboard players get @s monster_enderman_marker
execute at @s as @e[type=marker,tag=monsters.enderman_marker] if score @s monster_enderman_marker = marker.id_find monster_enderman_marker run return run tp @s ~ ~ ~ ~ ~
