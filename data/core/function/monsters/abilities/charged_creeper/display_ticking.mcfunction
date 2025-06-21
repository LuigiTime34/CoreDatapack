#: dummy creeper display 
 data merge entity @s {Fire:0}
 execute unless entity @n[distance=..3.5,tag=tower] run tag @s add monsters.dead_creeper_display
 #: remove display
 execute as @e[tag=tower,tag=!monsters.creeper_disabled] at @s as @n[distance=..3.5,tag=monsters.creeper_display] run tag @s add monsters.dead_creeper_display
 #: kill dummy creepers after use
 execute as @s[tag=monsters.dead_creeper_display] run tp @s ~ -200 ~
 execute as @s[tag=monsters.dead_creeper_display] run kill @s