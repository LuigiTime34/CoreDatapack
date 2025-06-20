# particle ring
$particle $(particle_type) ^ ^ ^$(range) ^ ^ ^ 0 0 normal @a[distance=..$(range)]
$particle $(particle_type) ^ ^ ^$(range) ^ ^ ^ 0 0 normal @a[tag=defense.aerial_view]
scoreboard players add @s tower_range_indicator 1

# get range and particle type again
execute store result score @s tower_range_particle run data get entity @s data.range 10
# Add 3.5 to the range, to encounter for the towers width.
scoreboard players operation @s tower_range_particle += 35. tower_range_particle
execute store result storage core:tower_range range int 0.1 run scoreboard players get @s tower_range_particle
data modify storage core:tower_range particle_type set from entity @s data.particle_type

execute if score @s tower_range_indicator matches ..8 rotated ~45 0 run function core:towers/global/show_particle with storage core:tower_range
execute if score @s tower_range_indicator matches 9.. run scoreboard players reset @s tower_range_indicator