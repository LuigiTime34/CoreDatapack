#> Tower Placement Tick

#: activate tiles
execute if entity @s[advancements={tower:placement_active=false}] run advancement grant @s only tower:placement_active

#: search for looking at tile
execute if predicate tower:looking_at_placer run function tower:placement/search
execute unless entity @e[tag=looking.result] run scoreboard players reset @s tower_placement

#: indicators
execute if predicate tower:holding_panda at @n[tag=looking.result] run function tower:placement/indicator/tower/panda
execute if predicate tower:holding_storm at @n[tag=looking.result] run function tower:placement/indicator/tower/storm
execute if predicate tower:holding_bee at @n[tag=looking.result] run function tower:placement/indicator/tower/bee

#: result
tag @e[tag=looking.result] remove looking.result
