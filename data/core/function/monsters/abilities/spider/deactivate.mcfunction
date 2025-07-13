#> Spider Deactivate

#: modify data
data modify entity @s CustomNameVisible set value false
data modify entity @s Invulnerable set value true

#: tags
tag @s remove monster
tag @s remove monsters.show_health
tag @s add monsters.has_mob
