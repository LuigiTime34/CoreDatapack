#> Tower Placement Search

#: get candidates
execute as @e[type=interaction,tag=towers.tower_placer,tag=!towers.has_tower,distance=..6.5] run tag @s add looking.candidate

#: reset placement id
scoreboard players set max.id tower_placement 0

#: reset search filter
tag @e[tag=looking.candidate] add looking.result

#: assign unique placement id
execute as @e[tag=looking.result] store result score @s tower_placement run scoreboard players add max.id tower_placement 1

#: run search
function tower:placement/search/iteration

#: filter reset
tag @e[tag=looking.in_filter] remove looking.in_filter
scoreboard players set filter.id tower_placement 0

#: end search
tag @e[tag=looking.result] add looking.options
scoreboard players reset @e[tag=looking.candidate] tower_placement
tag @e[tag=looking.candidate] remove looking.candidate
