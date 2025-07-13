#> Storm Freeze Effect 

#: particles
execute at @s anchored eyes positioned ^ ^-0.75 ^ run particle minecraft:snowflake ~ ~ ~ 0.2 0.8 0.2 0 2
execute at @s anchored eyes positioned ^ ^-0.75 ^ run particle minecraft:block{block_state:"ice"} ~ ~ ~ 0.2 0.8 0.2 0 1

#: shaking
data merge entity @s {TicksFrozen:140}

#: timer decrease
execute unless score @s towers_storm_freeze_timer matches 0 run return run scoreboard players remove @s towers_storm_freeze_timer 1

#: end freeze
tag @s remove towers.freeze
scoreboard players reset @s towers_storm_freeze_power
scoreboard players reset @s towers_storm_freeze_timer
