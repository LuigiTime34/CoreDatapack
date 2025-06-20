$scoreboard players set @s towers_cooldown $(cooldown)
$function core:towers/global/target_mob {"range":"$(range)","reset_cooldown":"2"}
execute unless entity @n[tag=defense-target] run return run scoreboard players set @s towers_cooldown 2
execute as @n[tag=defense.storm_rod] at @s run function core:towers/storm/prepare_raycast
$execute as @n[tag=defense-monster,tag=defense-target] at @s run function core:towers/storm/blow_back_freeze_storm {"damage":"$(damage)","blow_power":"$(blow_power)"}