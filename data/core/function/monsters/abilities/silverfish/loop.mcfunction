#> Silverfish burrow

#: burrow cooldown and execution
scoreboard players add @s monster_abilities 1
execute if score @s monster_abilities matches 10 run function core:monsters/abilities/silverfish/burrow

#: burrowing particle
execute if score @s monster_abilities matches 5..70 at @s positioned ~ -59 ~ run particle block{block_state:"minecraft:brown_terracotta"} ~ ~ ~ 0.1 0.1 0.1 1 5 force

#: come back up from burrow
execute if score @s monster_abilities matches 70 run function core:monsters/abilities/silverfish/unburrow