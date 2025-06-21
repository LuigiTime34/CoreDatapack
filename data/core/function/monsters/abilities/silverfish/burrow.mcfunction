execute if data entity @s {Health:30.0f} run return run scoreboard players set @s monster_abilities 100
tp @s ~ ~-1 ~
tag @s remove monster
data modify entity @s Invulnerable set value 1b
scoreboard players set @s monster_speed 0
scoreboard players set @s monster_abilities 100