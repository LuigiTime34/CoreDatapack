 #: detect dismount
 execute as @s[tag=monsters.jockey] run tag @s remove monsters.jockey
 execute as @s[tag=!monster] on vehicle on passengers run tag @s add monsters.jockey
 execute as @s[tag=!monster,tag=!monsters.jockey] run function core:monsters/abilities/chicken_jockey/dismount

 #: rotation and distance sync
 execute as @s[tag=!monster] at @s run data modify entity @s Rotation set from entity @n[distance=..1,tag=monsters.chicken] Rotation
 execute as @s[tag=!monster] at @s run scoreboard players operation @s monster_distance = @n[distance=..1,tag=monsters.chicken] monster_distance