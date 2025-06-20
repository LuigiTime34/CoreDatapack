#: dummy creeper display 
 data merge entity @s {Fire:0}
 execute unless entity @n[distance=..3.5,tag=defense.tower_marker] run tag @s add defense.dead_creeper_display
 #: remove display
 execute as @e[tag=defense.tower_marker,tag=!defense.creeper_disabled] at @s as @n[distance=..3.5,tag=defense.creeper_display] run tag @s add defense.dead_creeper_display
 #: kill dummy creepers after use
 execute as @s[tag=defense.dead_creeper_display] run tp @s ~ -200 ~
 execute as @s[tag=defense.dead_creeper_display] run kill @s