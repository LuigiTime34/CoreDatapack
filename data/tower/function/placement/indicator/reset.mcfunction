#> Tower Placement Indicator Inactive

#: tag reset
tag @s remove indicator.panda
tag @s remove indicator.storm
tag @s remove indicator.bee

#: tile reset
data modify entity @s[tag=!tile.disabled] Glowing set value true
item replace entity @s container.0 with white_stained_glass_pane
data modify entity @s transformation.scale set value [6.5f,6.5f,0.5f]
data modify entity @s glow_color_override set value -1
tag @n[type=interaction,tag=towers.tower_placer] remove placement.active

#: path highlights
execute as @e[tag=game.path_highlight,distance=..9] run data merge entity @s {Glowing:0b}
