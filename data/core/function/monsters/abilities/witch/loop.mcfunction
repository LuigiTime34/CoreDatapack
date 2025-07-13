#> Witch Loop

#: cooldown and execution
scoreboard players add @s monster_abilities 1
execute if score @s monster_abilities matches 80 at @s run function core:monsters/abilities/witch/heal

#: remove potion from witch because minecraft bug :p
execute if items entity @s weapon * run item replace entity @s weapon with minecraft:air
