#> Placement Indicator Bee 

#: playsound
execute unless score @s tower_placement matches 3 run advancement revoke @s only tower:placement_sound
scoreboard players set @s[advancements={tower:placement_sound=false}] tower_placement 3
advancement grant @s only tower:placement_sound

#: bee indicator
execute as @n[type=item_display,tag=towers.square] run function tower:placement/indicator/reset
tag @n[type=interaction,tag=looking.result] add placement.active
item replace entity @n[type=item_display,tag=towers.square] container.0 with white_stained_glass_pane
data merge entity @n[type=item_display,tag=towers.square] {transformation:{scale:[6.85,6.85,0.5f]},glow_color_override:56580}

#: bee path highlights
execute as @e[tag=game.path_highlight,distance=..9] run data merge entity @s {Glowing:1b}
