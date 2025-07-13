execute if score @s towers_panda_boo_delay matches 1.. run scoreboard players remove @s towers_panda_boo_delay 1
execute as @s[tag=towers.panda_boo_attacker,tag=!towers.panda_boo_attack] if score @s towers_panda_boo_delay matches 16 at @s run function tower:panda/get_damage
execute if score @s towers_panda_boo_delay matches 5 at @s run tp @s ~ ~-2.9 ~
execute if score @s towers_panda_boo_delay matches 1 run kill @s