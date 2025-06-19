execute unless entity @e[distance=..0.9,tag=defense-monster,tag=!defense-new_giant_reinforcement,limit=1] run return fail
execute anchored feet run tp @s ^ ^ ^-0.7
scoreboard players remove @s defense.distance 140
execute at @s run function core:defense/monsters/boss/giant/reinforcements_kb_loop