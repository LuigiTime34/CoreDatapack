#> Placement Search Check Filter 

#: filter check
scoreboard players operation selected.id tower_placement = @s tower_placement
scoreboard players operation selected.id tower_placement /= filter.id tower_placement
scoreboard players operation selected.id tower_placement %= 2. tower_placement

#: narrowing filter
tag @s remove looking.in_filter
execute if score selected.id tower_placement matches 1 run tag @s add looking.in_filter
