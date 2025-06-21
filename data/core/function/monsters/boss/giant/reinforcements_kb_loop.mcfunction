execute unless entity @e[distance=..0.9,tag=monster,tag=!monsters.new_giant_reinforcement,limit=1] run return fail
execute anchored feet run tp @s ^ ^ ^-0.7
scoreboard players remove @s monster_distance 140
execute at @s run function core:monsters/boss/giant/reinforcements_kb_loop