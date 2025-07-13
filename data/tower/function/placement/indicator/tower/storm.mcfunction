#> Placement Indicator Storm

#: playsound
execute unless score @s tower_placement matches 2 run advancement revoke @s only tower:placement_sound
scoreboard players set @s[advancements={tower:placement_sound=false}] tower_placement 2
advancement grant @s only tower:placement_sound

#: storm indicator
execute as @n[type=item_display,tag=towers.square] run function tower:placement/indicator/reset
tag @n[type=interaction,tag=looking.result] add placement.active
item replace entity @n[type=item_display,tag=towers.square] container.0 with heart_of_the_sea
data merge entity @n[type=item_display,tag=towers.square] {transformation:{scale:[27.0f,27.0f,0.5f]},glow_color_override:56580}
