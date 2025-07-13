#> Tower Placement Active

#: multiplayer compatibility
advancement grant @s only tower:placement_active
execute if entity @e[tag=active.placement] run return 0

#: activate tower placers
execute as @e[type=interaction,tag=towers.tower_placer] run tag @s add active.placement
execute as @e[type=interaction,tag=towers.tower_placer] run data modify entity @s width set value 7.0f

#: tiles
execute at @e[type=interaction,tag=towers.tower_placer,tag=!placement.active] as @n[type=item_display,tag=towers.square] run function tower:placement/indicator/reset