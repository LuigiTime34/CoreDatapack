#> Witch Heal

#: reset timer
scoreboard players set @s monster_abilities 0

#: heal self
effect give @s minecraft:instant_health 1 0

#: heal other monsters
execute as @e[type=!#minecraft:undead,type=!#core:not_healable,tag=monster,distance=..5] run effect give @s minecraft:instant_health 1 0
execute as @e[type=#minecraft:undead,type=!#core:not_healable,tag=monster,distance=..5] run effect give @s minecraft:instant_damage 1 0

execute as @e[distance=..5,tag=monster] run function core:monsters/health/update

#: playsound
execute run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 2

#: particle ring
execute at @s positioned ~ ~0.15 ~ run function core:monsters/abilities/witch/particle_ring

#: particle
execute as @e[type=!#core:not_healable,tag=monster,distance=..5] at @s anchored eyes positioned ^ ^ ^0.1 run particle minecraft:entity_effect{color:[1.0,0.0,0.0,1.0]} ~ ~-0.5 ~ 0.4 1.0 0.4 0 20 force
execute anchored eyes positioned ^ ^ ^0.1 run particle minecraft:entity_effect{color:[1.0,0.0,0.0,1.0]} ~ ~-0.5 ~ 0.4 1.0 0.4 0 20 force
