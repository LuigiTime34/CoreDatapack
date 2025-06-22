scoreboard players set @s monster_abilities 80
# Heal itself
playsound minecraft:entity.witch.drink master @a ~ ~ ~ 2
effect give @s minecraft:instant_health 1 0
data modify entity @s HurtTime set value 10
particle minecraft:entity_effect{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0.3 0.3 0.3 0 20

# Heal other monsters that are not witches
execute as @e[type=!#minecraft:undead,distance=..5,tag=monster,tag=!monsters.witch] run effect give @s minecraft:instant_health 1 0
execute as @e[type=#minecraft:undead,distance=..5,tag=monster,tag=!monsters.witch,tag=!monsters.zombified_piglin] run effect give @s minecraft:instant_damage 1 0
execute as @e[distance=..5,tag=monster,tag=!monsters.zombified_piglin,tag=!monsters.witch] run data modify entity @s HurtTime set value 10
execute as @e[distance=..5,tag=monster,tag=!monsters.witch] at @s run particle minecraft:entity_effect{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0.3 0.3 0.3 0 20