execute store result score @s tower_range_particle run data get entity @n[tag=panda-center-marker,tag=!defense.off] data.range 10
# Add 3.5 to the range, to encounter for the towers width.
scoreboard players operation @s tower_range_particle += 35. tower_range_particle
execute store result storage core:panda_range range int 0.1 run scoreboard players get @s tower_range_particle
function core:towers/panda/rotate with storage core:panda_range