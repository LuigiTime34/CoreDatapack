#> Storm Snowstorm Effect

#: snowstorm slowing
execute at @s as @n[tag=monster,distance=..1.2,tag=!towers.freeze] run function tower:type/storm/attack/snowstorm/freeze

#: particle
particle minecraft:snowflake ~ -58 ~ 0.3 1 0.3 0 30

#: timer decrease
execute unless score @s towers_cooldown matches 0 run return run scoreboard players remove @s towers_cooldown 1

#: end snowstorm
playsound minecraft:entity.breeze.death master @a ~ ~ ~ 1 0.5
kill @s
