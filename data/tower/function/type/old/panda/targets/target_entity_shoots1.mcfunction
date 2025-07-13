$scoreboard players set @s towers_cooldown $(cooldown)
$function tower:global/target_mob {"range":"$(range)","reset_cooldown":"11"}
execute unless entity @n[tag=towers.target] run return run scoreboard players set @s towers_cooldown 11
execute as @e[distance=..3.5,tag=towers.panda,tag=!towers.panda_attacked,sort=random,limit=1] at @s run function tower:panda/show_particle
$execute as @n[tag=monster,tag=towers.target] at @s positioned ^ ^ ^.3 run function tower:panda/stab {"damage":"$(damage)","age":"$(age)","leaves":"$(leaves)"}