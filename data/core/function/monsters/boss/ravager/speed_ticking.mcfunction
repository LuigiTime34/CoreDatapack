particle minecraft:entity_effect{color:[0.18,0.85,0.93,1.0]} ~ ~1 ~ 1 0.5 1 0 1
execute if score @s monster_ravager_speed matches 1.. run scoreboard players remove @s monster_ravager_speed 1
execute if score @s monster_ravager_speed matches 1 run function core:monsters/boss/ravager/remove_speed