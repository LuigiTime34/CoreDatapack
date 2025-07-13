#> Tower Placement Click 
#< triggered by advancement: click_right.json

#: revoke advancement
advancement revoke @s only tower:click_right

#: identifier check
tag @s add place.tower

#: find tower spot
function tower:placement/search
execute unless entity @n[type=interaction,tag=looking.result] run return run tag @s remove place.tower

#: get rotation
execute at @n[tag=game.path_highlight] facing entity @n[tag=looking.result] feet run tp @s ~ ~ ~ ~ 0
execute at @s unless entity @n[tag=looking.result,distance=..5.1] at @n[tag=looking.result] at @n[tag=game.path_highlight] facing entity @n[tag=looking.result] feet run tp @s ~ ~ ~ ~ 0

#: place tower
execute as @e[type=interaction,tag=looking.result] at @s on target if entity @s[tag=place.tower,predicate=tower:holding_bee] run function tower:placement/place {tower:'bee/base',cost:30,tag:'bee',upgrade:'bee_base'}
execute as @e[type=interaction,tag=looking.result] at @s on target if entity @s[tag=place.tower,predicate=tower:holding_storm] run function tower:placement/place {tower:'storm/base',cost:50,tag:'storm',upgrade:'storm_base'}
#execute as @e[type=interaction,tag=looking.result] at @s on target if entity @s[tag=place.tower,predicate=tower:holding_panda] run function tower:placement/place {tower:'panda/base'}

#: initiate cooldown
execute at @n[tag=looking.result] as @n[tag=tower] run scoreboard players set @s towers_cooldown 0

#: update scoreboard
function core:scoreboard/get_highest

#: tag removal
tag @s remove place.tower

#: interaction reset
execute as @e[type=interaction,tag=towers.tower_placer] run data remove entity @s interaction
