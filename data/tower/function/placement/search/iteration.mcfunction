#> Placement Search Iteration 

#: find candidates in the filter
execute if score filter.id tower_placement matches 1.. as @e[tag=looking.candidate,tag=looking.result] run function tower:placement/search/check_filter
execute if score filter.id tower_placement matches 0 run tag @e[tag=looking.candidate,tag=looking.result] add looking.in_filter

#: search success
execute store success score search.success tower_placement if predicate tower:looking_at_filter

execute if score search.success tower_placement matches 0 run tag @e[tag=looking.candidate,tag=looking.in_filter] remove looking.result
execute if score search.success tower_placement matches 1 run tag @e[tag=looking.candidate,tag=!looking.in_filter] remove looking.result

#: change step duration
scoreboard players operation filter.id tower_placement *= 2. tower_placement
execute if score filter.id tower_placement matches 0 run scoreboard players set filter.id tower_placement 1

#: iterate again
execute if entity @e[tag=looking.candidate,tag=looking.result,limit=1] if score filter.id tower_placement <= max.id tower_placement run function tower:placement/search/iteration
