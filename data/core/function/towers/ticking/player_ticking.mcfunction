#: show interactions when holding tower, hide when not
 execute unless predicate core:holding_placer as @e[tag=towers.tower_placer] at @s positioned ~ -60 ~ unless entity @s[distance=...1] unless entity @n[distance=..3.5,tag=towers.barrel_marker] run tp @s ~ -60 ~
 execute if predicate core:holding_placer as @e[tag=towers.tower_placer] at @s positioned ~ -59 ~ unless entity @s[distance=...1] unless entity @n[distance=..3.5,tag=towers.barrel_marker] run tp @s ~ -59 ~
#: store player rotation for tower placement
 execute store result score @s game_rotation run data get entity @s Rotation[0]
#: find upgrade when opening barrel
execute at @s at @n[tag=towers.barrel_marker,tag=towers.open_barrel] run function core:towers/global/check_for_item

#> Placement System
 execute as @p[gamemode=adventure] at @s run tag @e[distance=..10,tag=towers.tower_placer] add defense.tower_placer_looker
 execute as @p[gamemode=adventure] at @s run tag @e[distance=10..,tag=towers.tower_placer] remove defense.tower_placer_looker
 
 #: play sound when looking at tower placer
 execute as @p[gamemode=adventure,tag=!game.played_sound] if predicate core:looking_at_placer if predicate core:holding_placer as @a at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 2 1
 execute as @p[gamemode=adventure] if predicate core:looking_at_placer run tag @s add game.played_sound
 execute as @p[gamemode=adventure] unless predicate core:looking_at_placer run tag @s remove game.played_sound
 
 #: make placement square glow when holding a tower
 execute as @p[gamemode=adventure] if predicate core:holding_placer as @e[tag=towers.square,nbt=!{Glowing:1b}] at @s unless entity @n[distance=..3.5,tag=towers.barrel_marker] run data merge entity @s {Glowing:1b}
 execute as @p[gamemode=adventure] unless predicate core:holding_placer as @e[tag=towers.square,nbt={Glowing:1b}] at @s run data merge entity @s {Glowing:0b}
 #: run raycast (unless already found)
 execute unless entity @e[tag=game.green] if predicate core:holding_placer anchored eyes positioned ^ ^ ^ anchored feet run function core:towers/global/squares/raycast/start_ray