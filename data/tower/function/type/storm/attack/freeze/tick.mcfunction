#> Storm Freeze Tick

#: ticking
execute if entity @e[tag=towers.freeze] run schedule function tower:type/storm/attack/freeze/tick 1t replace

#: freeze effect
execute as @e[tag=monster,tag=towers.freeze] at @s run function tower:type/storm/attack/freeze/effect
