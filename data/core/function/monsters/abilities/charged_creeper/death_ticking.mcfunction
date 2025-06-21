#: detect death ticking
 execute as @s[tag=monsters.creeper_not_dead] run tag @s remove monsters.creeper_not_dead
 execute on vehicle on passengers run tag @s add monsters.creeper_not_dead
 execute as @s[tag=!monsters.creeper_not_dead] unless score @s monster_abilities matches 1.. run function core:monsters/abilities/charged_creeper/explode

#: explosion cooldown
 execute if score @s monster_abilities matches 1.. run scoreboard players remove @s monster_abilities 1
 execute if score @s monster_abilities matches 1 at @s positioned ~ -59 ~ run tag @e[distance=..9,tag=monsters.creeper_disabled] remove defense.creeper_disabled
 execute if score @s monster_abilities matches 1 run kill @s