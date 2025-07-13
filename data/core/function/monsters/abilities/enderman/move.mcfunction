#> Enderman Move

#: teleport to marker
tp @s ~ ~ ~ ~ ~

#: moving
execute at @s run function core:monsters/movement/determine_speed

#: teleport timer
scoreboard players add @s monster_abilities 1
execute if score @s monster_abilities matches 100 run function core:monsters/abilities/enderman/teleport

#: move marker
return run function core:monsters/abilities/enderman/marker