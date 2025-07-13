$execute positioned ~ -59 ~ unless entity @e[distance=..$(range),tag=monster,tag=!monsters.has_mob] run return run scoreboard players set @s towers_cooldown $(reset_cooldown)
scoreboard players set max. monster_distance -2147483648
$execute positioned ~ -59 ~ as @e[tag=monster,tag=!monsters.has_mob,distance=..$(range)] run scoreboard players operation max. monster_distance > @s monster_distance
$execute positioned ~ -59 ~ as @e[tag=monster,tag=!monsters.has_mob,distance=..$(range),limit=1] if score @s monster_distance = max. monster_distance run tag @s add towers.target