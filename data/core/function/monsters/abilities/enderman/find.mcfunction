#> Enderman Find

#: find enderman wandering
execute as @e[type=enderman,tag=monster] if score @s monster_enderman_marker = marker.id_find monster_enderman_marker run return run function core:monsters/abilities/enderman/move
