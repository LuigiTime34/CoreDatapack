#> Storm Snowstorm Tick

#: ticking
execute if entity @e[type=marker,tag=towers.snowstorm] run schedule function tower:type/storm/attack/snowstorm/tick 1t replace

#: freeze effect
execute as @e[type=marker,tag=towers.snowstorm] at @s run function tower:type/storm/attack/snowstorm/effect
