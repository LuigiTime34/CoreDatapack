scoreboard players set @s defense.items 80
execute at @s unless entity @n[distance=..1,tag=defense.boulder-marker] run return run tag @s add defense.tnt_enemies
setblock ~ ~-1 ~ minecraft:green_concrete_powder