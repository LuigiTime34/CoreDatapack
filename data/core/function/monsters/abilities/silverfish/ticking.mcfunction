#: burrow cooldown and execution
 execute if score @s monster_abilities matches 1.. run scoreboard players remove @s monster_abilities 1
 execute if score @s monster_abilities matches 1 run function core:monsters/abilities/silverfish/burrow
#: come back up from burrow
 execute if score @s monster_abilities matches 60 run function core:monsters/abilities/silverfish/unburrow