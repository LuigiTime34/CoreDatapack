#> Spider Dismount

#: share distance
execute on passengers store result score @s monster_distance on vehicle run scoreboard players get @s monster_distance

#: ride
ride @s dismount

#: position
execute at @s run tp @s ~ -59 ~

#: enable mob
tag @s add moving
tag @s remove monsters.riding_spider
