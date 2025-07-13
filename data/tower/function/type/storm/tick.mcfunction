#> Storm Tower Tick

#> Range Indicators
execute at @s if entity @p[distance=..26.5] run function tower:indicator/position

#> Tower Cooldown
execute if entity @s[tag=towers.disabled] run return 0
execute unless score @s towers_cooldown matches 0 run return run scoreboard players remove @s towers_cooldown 1

#> Tower Types

#: base tower
execute if entity @s[tag=towers.storm_base] at @s if entity @e[tag=monster,distance=..13.5] run function tower:type/storm/target {t:100, r:13.5, twr:'base_tower'}

#: base upgrade
execute if entity @s[tag=towers.upgrade1] at @s if entity @e[tag=monster,distance=..14.5] run function tower:type/storm/target {t:100, r:14.5, twr:'base_upgrade'}

#: snow base
execute if entity @s[tag=towers.upgrade_snow1] at @s if entity @e[tag=monster,distance=..15.5] run function tower:type/storm/target {t:100, r:15.5, twr:'snow_base'}

#: snow upgrade
execute if entity @s[tag=towers.upgrade_snow2] at @s if entity @e[tag=monster,distance=..15.5] run function tower:type/storm/target {t:120, r:15.5, twr:'snow_upgrade'}

#: surge base
execute if entity @s[tag=towers.upgrade_surge1] at @s if entity @e[tag=monster,distance=..20.5] run function tower:type/storm/target {t:80, r:20.5, twr:'surge_base'}

#: surge upgrade
execute if entity @s[tag=towers.upgrade_surge2] at @s if entity @e[tag=monster,distance=..25.5] run function tower:type/storm/target {t:80, r:25.5, twr:'surge_upgrade'}

#> Convert Creeper
execute unless entity @n[tag=towers.target] run return 0
execute as @n[tag=towers.target] if entity @s[type=creeper,tag=monsters.creeper] run function core:monsters/abilities/charged_creeper/convert

#: remove target tags
tag @e[tag=target] remove target
tag @e[tag=towers.target] remove towers.target
