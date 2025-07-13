#> Storm Snowstorm Freeze

#: freeze
schedule function tower:type/storm/attack/freeze/tick 1t replace
execute unless score @s towers_storm_freeze_timer matches 80.. run scoreboard players set @s towers_storm_freeze_timer 80
execute unless score @s towers_storm_freeze_power matches 3.. run scoreboard players set @s towers_storm_freeze_power 3
tag @s add towers.freeze