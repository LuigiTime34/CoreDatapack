#> Spider Activate

#: spider cooldown
scoreboard players set @s monster_abilities -80

#: modify data
data modify entity @s CustomNameVisible set value true
data modify entity @s Invulnerable set value false

#: tags
tag @s add monster
tag @s add monsters.show_health
tag @s remove monsters.has_mob
