execute positioned ~ -49 ~ if entity @s[distance=..0.3] as @e[tag=towers.panda_landing] if score @s util_uuid = @n[tag=towers.panda_tnt] util_uuid run rotate @n[tag=towers.panda_tnt] facing entity @s
execute at @e[distance=..0.3,tag=towers.panda_landing] if score @s util_uuid = @n[tag=towers.panda_landing] util_uuid run function tower:panda/bamboom/get_damage_bomb
tp @s ^ ^ ^0.3

execute as @e[distance=20..,tag=towers.panda_landing] if score @s util_uuid = @n[tag=towers.panda_tnt] util_uuid as @n[tag=towers.panda_tnt] run function tower:panda/bamboom/bomb_failsafe