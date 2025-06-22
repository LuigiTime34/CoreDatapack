$scoreboard players set @s towers_cooldown $(cooldown)
$function core:towers/global/target_mob {"range":"$(range)","reset_cooldown":"2"}
execute unless entity @n[tag=towers.target] run return run scoreboard players set @s towers_cooldown 2

$execute at @n[tag=towers.panda] run function core:towers/panda/bamboom/summon_bomb {"damage":"$(damage)","bomb_range":"3"}