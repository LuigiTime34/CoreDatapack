#: snowstorm cooldown
 execute as @e[tag=monster] if score @s towers_storm_freeze_timer matches 1.. run scoreboard players remove @s towers_storm_freeze_timer 1
 execute as @e[tag=monster] if score @s towers_storm_freeze_timer matches 1.. at @s run particle minecraft:snowflake ~ ~ ~ 0.2 1 0.2 0 5
 execute as @e[tag=monster] if score @s towers_storm_freeze_timer matches 1 run scoreboard players set @s towers_storm_freeze_power 0
 
 #: snowstorm slowing
 particle minecraft:snowflake ~ ~ ~ 0.5 1 0.5 0 30
 execute if score @s towers_cooldown matches 1.. run scoreboard players remove @s towers_cooldown 1
 execute if score @s towers_cooldown matches 1 at @s run function core:towers/storm/kill_freezestorm
 
 execute as @e[tag=monster] at @s if entity @n[distance=..3,tag=towers.snowstorm] run scoreboard players set @s towers_storm_freeze_power 6
 execute as @e[tag=monster] at @s if entity @n[distance=..3,tag=towers.snowstorm] run scoreboard players set @s towers_storm_freeze_timer 100