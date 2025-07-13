
#> Storm Tower
execute as @e[tag=towers.storm_marker] at @s run function tower:type/storm/tick

#> Bee Tower
execute as @e[tag=towers.bee_marker] at @s run function tower:type/bee/tick
execute as @e[tag=towers.bee] at @s run function tower:type/bee/attack/tick

#> Tower UI System
execute as @e[type=item_display,tag=towers.barrel_display] at @s run function tower:ui/tick

#> Tower Placement Indicator System
#: remove tag from looked at towers
tag @e[type=interaction,tag=looking.options] remove looking.options

#: indicators
execute as @a[predicate=tower:holding_placer] at @s run function tower:placement/tick
execute as @a[predicate=!tower:holding_placer] if score @s tower_placement matches 1..3 run scoreboard players reset @s tower_placement

#: reset indicators if not looked at
execute at @e[type=interaction,tag=!looking.options,tag=placement.active] as @n[type=item_display,tag=towers.square] run function tower:placement/indicator/reset

#: deactivate tower placement if not using
execute unless entity @a[predicate=tower:holding_placer] run function tower:placement/inactive


#> Tower upgrade management
 #: run ticking whilst barrel is open
# execute as @e[tag=towers.barrel_marker,tag=!towers.open_barrel] at @s if block ~ ~ ~ minecraft:barrel[open=true] run tag @s add towers.open_barrel
# execute as @e[tag=towers.barrel_marker,tag=towers.open_barrel] at @s if block ~ ~ ~ minecraft:barrel[open=false] run tag @s remove towers.open_barrel
#
 execute at @s at @n[tag=towers.barrel_marker,tag=towers.open_barrel] run function tower:global/check_for_item

#> Tower display and range indicators
 #: make barrels glow when a player is nearby
# execute at @a[gamemode=adventure] as @n[distance=..10,tag=towers.barrel_display,nbt=!{Glowing:1b}] run data modify entity @s Glowing set value 1b
# execute at @a[gamemode=adventure] as @n[distance=10..,tag=towers.barrel_display,nbt={Glowing:1b}] run data modify entity @s Glowing set value 0b
# execute as @e[tag=towers.barrel_display] at @s unless entity @n[distance=..0.1,tag=towers.barrel_marker] run tp @s @n[distance=..3,tag=towers.barrel_marker]
