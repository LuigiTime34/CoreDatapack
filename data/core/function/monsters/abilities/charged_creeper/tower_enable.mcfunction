#> Charged Creeper Tower Enable

#: reset timer
scoreboard players reset @s monster_abilities

#: remove creeper display
execute at @s run tp @n[type=creeper,tag=monsters.creeper_display] ~ -200 ~

#: remove tags
tag @s remove towers.disabled
tag @s remove monsters.creeper_disabled
