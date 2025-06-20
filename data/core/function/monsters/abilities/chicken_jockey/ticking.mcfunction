 #: detect dismount
 execute as @s[tag=defense-jockey] run tag @s remove defense-jockey
 execute as @s[tag=!defense-monster] on vehicle on passengers run tag @s add defense-jockey
 execute as @s[tag=!defense-monster,tag=!defense-jockey] run function core:monsters/abilities/chicken_jockey/dismount

 #: rotation and distance sync
 execute as @s[tag=!defense-monster] at @s run data modify entity @s Rotation set from entity @n[distance=..1,tag=defense-chicken] Rotation
 execute as @s[tag=!defense-monster] at @s run scoreboard players operation @s monster_distance = @n[distance=..1,tag=defense-chicken] monster_distance