$particle small_flame ^ ^ ^$(range) ^ ^ ^ 0 0 normal
scoreboard players add @s tower_range_indicator 1

execute store result storage core:panda_range particle_type int 1 run scoreboard players get @s towers_panda_bomb_range

execute if score @s tower_range_indicator matches ..8 rotated ~45 0 run function core:towers/panda/bamboom/bomb_ring with storage core:panda_range
execute if score @s tower_range_indicator matches 9.. run scoreboard players reset @s tower_range_indicator