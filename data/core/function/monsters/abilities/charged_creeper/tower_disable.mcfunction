#> Charged Creeper Tower Disable

#: display fire prevention
execute as @n[type=creeper,tag=monsters.creeper_display] run data merge entity @s {Fire:0}

#: explosion cooldown
scoreboard players add @s monster_abilities 1
execute if score @s monster_abilities matches 80 at @s run function core:monsters/abilities/charged_creeper/tower_enable
