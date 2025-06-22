#> Range preview system
 #: manage tower placer visibility (mostly covered in player ticking)
 execute as @e[tag=game.path_highlight,nbt={Glowing:1b}] run data merge entity @s {Glowing:0b}
 
 #: make tower square expand to cirlce when looking at it
 execute as @e[tag=towers.square,tag=game.green] run function core:towers/global/squares/ticking


#> Tower placement system
 #: player ticking
 execute as @a[gamemode=adventure] run function core:towers/ticking/player_ticking
 
 #: tower placement ticking
 execute as @e[tag=towers.tower_placer] run function core:towers/ticking/placement_ticking

#> Tower upgrade management
 #: run ticking whilst barrel is open
 execute as @e[tag=towers.barrel_marker,tag=!towers.open_barrel] at @s if block ~ ~ ~ minecraft:barrel[open=true] run tag @s add towers.open_barrel
 execute as @e[tag=towers.barrel_marker,tag=towers.open_barrel] at @s if block ~ ~ ~ minecraft:barrel[open=false] run tag @s remove towers.open_barrel

#> Tower display and range indicators
 #: display range indicator
 execute as @e[tag=tower,tag=!towers.off] at @s run function core:towers/global/main_ticking
 
 #: make barrels glow when a player is nearby
 execute at @a[gamemode=adventure] as @n[distance=..10,tag=towers.barrel_display,nbt=!{Glowing:1b}] run data modify entity @s Glowing set value 1b
 execute at @a[gamemode=adventure] as @n[distance=10..,tag=towers.barrel_display,nbt={Glowing:1b}] run data modify entity @s Glowing set value 0b
 execute as @e[tag=towers.barrel_display] at @s unless entity @n[distance=..0.1,tag=towers.barrel_marker] run tp @s @n[distance=..3,tag=towers.barrel_marker]

#> Bee tower
execute as @e[tag=towers.bee_marker] at @s run function core:towers/bee/activation_ticking
 
 #: bees ticking
 execute as @e[tag=towers.bee_display] at @s run function core:towers/bee/bee_ticking


#> Storm tower
 execute as @e[tag=towers.storm_marker] at @s run function core:towers/storm/activation_ticking
 
 #: snowstorm ticking
 execute as @e[tag=towers.snowstorm] at @s run function core:towers/storm/snowstorm_ticking


#> Panda tower
 execute as @e[tag=towers.panda_marker] at @s run function core:towers/panda/activation_ticking
 
 #: bamboom ticking (run twice as fast)
 execute as @e[tag=towers.panda_tnt] at @s run function core:towers/panda/bamboom/bomb_ticking
 execute as @e[tag=towers.panda_tnt] at @s run function core:towers/panda/bamboom/bomb_ticking
 
 #: bamboom landing particles
 execute as @e[tag=towers.panda_landing] at @s run rotate @s ~6 ~
 execute as @e[tag=towers.panda_landing] at @s positioned ~ -58.5 ~ run function core:towers/panda/bamboom/get_particle_range
 
 #: bamboo shoot ticking
 execute as @e[tag=towers.panda_boo] at @s run function core:towers/panda/shoot_ticking
 
 #: panda rotation and range display
 execute as @e[tag=towers.panda] at @s positioned ~ -59 ~ run function core:towers/panda/get_range