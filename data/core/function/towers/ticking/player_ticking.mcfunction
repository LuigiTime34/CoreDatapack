#: play toast in when holding tower placer, play toast out when not holding tower placer
execute as @s[tag=!towers.holding_placer] if predicate core:holding_placer at @s run function core:towers/global/holding_placer
execute as @s[tag=towers.holding_placer] unless predicate core:holding_placer at @s run function core:towers/global/not_holding_placer

#: show interactions when holding tower, hide when not
 execute unless entity @a[predicate=core:holding_placer] as @e[tag=towers.tower_placer] at @s positioned ~ -60 ~ unless entity @s[distance=...1] unless entity @n[distance=..3.5,tag=towers.barrel_marker] run tp @s ~ -60 ~
 execute if entity @a[predicate=core:holding_placer] as @e[tag=towers.tower_placer] at @s positioned ~ -59 ~ unless entity @s[distance=...1] unless entity @n[distance=..3.5,tag=towers.barrel_marker] run tp @s ~ -59 ~
#: store player rotation for tower placement
 execute store result score @s game_rotation run data get entity @s Rotation[0]
#: find upgrade when opening barrel
execute at @s at @n[tag=towers.barrel_marker,tag=towers.open_barrel] run function core:towers/global/check_for_item

#> Placement System
 execute at @s run tag @e[distance=..10,tag=towers.tower_placer] add towers.placer_looker
 execute at @s run tag @e[distance=10..,tag=towers.tower_placer] remove towers.placer_looker
 
 #: play sound when looking at tower placer
 execute as @s[tag=!game.played_sound] if predicate core:looking_at_placer if predicate core:holding_placer as @a at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.5
 execute if predicate core:looking_at_placer run tag @s add game.played_sound
 execute unless predicate core:looking_at_placer run tag @s remove game.played_sound

 
 #: make placement square glow when holding a tower
 execute if entity @a[predicate=core:holding_placer] as @e[tag=towers.square,nbt=!{Glowing:1b}] at @s unless entity @n[distance=..3.5,tag=towers.barrel_marker] run data merge entity @s {Glowing:1b}
 execute unless entity @a[predicate=core:holding_placer] as @e[tag=towers.square,nbt={Glowing:1b}] at @s run data merge entity @s {Glowing:0b}
 #: run raycast (unless already found)
 execute unless entity @e[tag=game.green] if predicate core:holding_placer at @s anchored eyes positioned ^ ^ ^ anchored feet run function core:towers/global/squares/raycast/start_ray