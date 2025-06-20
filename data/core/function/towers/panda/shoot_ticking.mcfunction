execute if score @s towers_panda_boo_delay matches 1.. run scoreboard players remove @s towers_panda_boo_delay 1
execute as @s[tag=defense.panda_boo_attacker,tag=!defense.panda_boo_attacked] if score @s towers_panda_boo_delay matches 16 at @s run function core:towers/panda/get_damage
execute if score @s towers_panda_boo_delay matches 5 at @s run tp @s ~ ~-2.9 ~
execute if score @s towers_panda_boo_delay matches 1 run kill @s