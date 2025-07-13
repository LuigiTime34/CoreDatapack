#> Zombified Piglin Spawn Modify

#: get health
execute store result score @n[type=zombified_piglin,tag=monsters.new] monster_health run data get entity @s Health

execute as @n[type=zombified_piglin,tag=monsters.new] store result entity @s attributes[{id:"minecraft:max_health"}].base double 1 run scoreboard players get @s monster_health
execute as @n[type=zombified_piglin,tag=monsters.new] store result entity @s Health float 1 run scoreboard players get @s monster_health

#: get distance
execute store result score @n[type=zombified_piglin,tag=monsters.new] monster_distance run scoreboard players get @s monster_distance

#: set position
execute at @s rotated as @s positioned ~ ~ ~ rotated ~ ~ run rotate @n[type=zombified_piglin,tag=monsters.new] ~ ~
execute as @n[type=zombified_piglin,tag=monsters.new] at @s run function core:monsters/abilities/zombified_piglin/set_position_loop
