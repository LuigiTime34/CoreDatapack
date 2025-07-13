#> Bee Tower Tick

#> Tower Cooldown
execute if entity @s[tag=towers.disabled] run return 0
execute unless score @s towers_cooldown matches 0 run return run scoreboard players remove @s towers_cooldown 1


#> Tower Types


#: tower attack tag
tag @s add tower.attack

#: base tower
execute if entity @s[tag=towers.bee_base] at @s as @e[tag=game.path_highlight,distance=..7] at @s positioned ^ ^ ^2.0 align xyz positioned ~-1 -57.61 ~-1 if function tower:type/bee/raycast at @s positioned ~ -57.61 ~ facing entity @n[tag=tower.attack] feet rotated ~ 0 positioned ^ ^ ^0.20 if function tower:type/bee/attack/summon/bee run scoreboard players set @n[tag=tower.attack] towers_cooldown 20
# @s positioned ~-1 -57.49 ~-1 if function tower:type/bee/raycast at @s positioned ~ -57.49 ~ rotated ~ ~ if function tower:type/bee/attack/summon_bee run scoreboard players set @n[tag=tower.attack] towers_cooldown 300
#at @s positioned ~ -57.49 ~ positioned ^ ^ ^1 align xyz positioned ~-1 ~ ~-1 if function tower:type/bee/raycast at @s positioned ~ -57.49 ~ rotated as @s if function tower:type/bee/attack/summon_bee run scoreboard players set @n[tag=tower.attack] towers_cooldown 300

#execute if entity @s[tag=towers.storm_base] at @s if entity @e[tag=monster,distance=..13.5] run function tower:type/storm/target {t:100, r:13.5, twr:'base_tower'}

#: base upgrade
#execute if entity @s[tag=towers.upgrade1] at @s if entity @e[tag=monster,distance=..14.5] run function tower:type/storm/target {t:100, r:14.5, twr:'base_upgrade'}

#: snow base
#execute if entity @s[tag=towers.upgrade_snow1] at @s if entity @e[tag=monster,distance=..15.5] run function tower:type/storm/target {t:100, r:15.5, twr:'snow_base'}

#: snow upgrade
#execute if entity @s[tag=towers.upgrade_snow2] at @s if entity @e[tag=monster,distance=..15.5] run function tower:type/storm/target {t:120, r:15.5, twr:'snow_upgrade'}

#: surge base
#execute if entity @s[tag=towers.upgrade_surge1] at @s if entity @e[tag=monster,distance=..20.5] run function tower:type/storm/target {t:80, r:20.5, twr:'surge_base'}

#: surge upgrade
#execute if entity @s[tag=towers.upgrade_surge2] at @s if entity @e[tag=monster,distance=..25.5] run function tower:type/storm/target {t:80, r:25.5, twr:'surge_upgrade'}

#: tag remove
tag @s remove tower.attack