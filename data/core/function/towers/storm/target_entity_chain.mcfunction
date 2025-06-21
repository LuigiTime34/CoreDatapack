$scoreboard players set @s towers_cooldown $(cooldown)
$function core:towers/global/target_mob {"range":"$(range)","reset_cooldown":"2"}
execute unless entity @n[tag=towers.target] run return run scoreboard players set @s towers_cooldown 2
execute as @n[tag=towers.storm_rod] at @s run function core:towers/storm/prepare_raycast
$execute as @n[tag=monster,tag=towers.target] at @s run function core:towers/storm/blow_back_chain {"damage":"$(damage)","blow_power":"$(blow_power)","max_chain_length":"$(max_chain_length)","chain_damage":"$(chain_damage)","chain_radius":"$(chain_radius)"}