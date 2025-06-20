$scoreboard players set @s towers_cooldown $(cooldown)
$function core:towers/global/target_mob {"range":"$(range)","reset_cooldown":"21"}
execute unless entity @n[tag=defense-target] run return run scoreboard players set @s towers_cooldown 21
execute as @e[distance=..3.5,tag=defense.panda,tag=!defense.attacked,sort=random,limit=1] at @s run function core:towers/panda/show_particle
$execute as @n[tag=defense-monster,tag=defense-target] at @s positioned ^ ^ ^.3 run function core:towers/panda/stab {"damage":"$(damage)","age":"$(age)","leaves":"$(leaves)"}