#: cooldown and execution
 execute if score @s monster_abilities matches 1.. run scoreboard players remove @s monster_abilities 1
 execute if score @s monster_abilities matches 1 run function core:monsters/abilities/witch/heal
#: remove potion from witch because minecraft bug :p
 item replace entity @s weapon with minecraft:air