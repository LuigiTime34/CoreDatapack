$scoreboard players set @s towers_cooldown $(cooldown)
$function tower:global/target_mob {"range":"$(range)","reset_cooldown":"11"}
execute unless entity @e[tag=towers.target,limit=1] run return run scoreboard players set @s towers_cooldown 11

$execute at @n[tag=towers.panda] run function tower:panda/bamboom/summon_bomb {"damage":"$(damage)","bomb_range":"3"}