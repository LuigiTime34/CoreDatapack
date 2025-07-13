#> Storm Tower

#> Identify Target
scoreboard players set max. monster_distance -2147483648
$execute as @e[tag=monster,distance=..$(r),tag=!monsters.has_mob] run tag @s add target
execute unless entity @n[tag=target] run return 0

#: sort mobs by furthest distance
execute as @e[tag=target] run scoreboard players operation max. monster_distance > @s monster_distance
execute as @e[tag=target] if score @s monster_distance = max. monster_distance run tag @s add towers.target
tag @e[tag=target] remove target

#> Attack Display
execute at @s run tag @n[tag=towers.storm_rod] add lightning.target
execute at @s positioned ~ -50 ~ run function tower:type/storm/attack/lightning/start

#> Attack Target
$execute as @n[tag=towers.target] at @s run function tower:type/storm/attack/type/$(twr)

#: cooldown
$scoreboard players set @s towers_cooldown $(t)
