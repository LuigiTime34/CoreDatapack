execute unless entity @e[distance=..0.6,tag=defense-zombified_piglin,tag=!defense-new_piglin,limit=1] run return fail
execute anchored feet run tp @s ^ ^ ^-0.4
scoreboard players remove @s monster_distance 80
execute at @s if block ~ -60 ~ minecraft:grass_block run return run function core:monsters/abilities/zombified_piglin/kill_cap
execute at @s run function core:monsters/abilities/zombified_piglin/kb_loop