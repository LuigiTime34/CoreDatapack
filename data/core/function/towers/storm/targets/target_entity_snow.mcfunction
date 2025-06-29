$scoreboard players set @s towers_cooldown $(cooldown)
$function core:towers/global/target_mob {"range":"$(range)","reset_cooldown":"2"}
execute unless entity @n[tag=towers.target] run return run scoreboard players set @s towers_cooldown 2
execute as @n[tag=towers.storm_rod] at @s run function core:towers/storm/prepare_raycast
$execute as @n[tag=monster,tag=towers.target] at @s run function core:towers/storm/freeze {"damage":"$(damage)","blow_power":"$(blow_power)","freeze_power":"$(freeze_power)","freeze_time":"$(freeze_time)"}