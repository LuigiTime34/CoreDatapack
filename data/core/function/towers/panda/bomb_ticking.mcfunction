execute positioned ~ -49 ~ if entity @s[distance=..0.3] as @e[tag=defense.panda_landing] if score @s util_uuid = @n[tag=defense.panda_tnt] util_uuid run rotate @n[tag=defense.panda_tnt] facing entity @s
execute at @e[distance=..0.3,tag=defense.panda_landing] if score @s util_uuid = @n[tag=defense.panda_landing] util_uuid run function core:towers/panda/get_damage_bomb
tp @s ^ ^ ^0.3

execute as @e[distance=20..,tag=defense.panda_landing] if score @s util_uuid = @n[tag=defense.panda_tnt] util_uuid as @n[tag=defense.panda_tnt] run function core:towers/panda/bomb_failsafe