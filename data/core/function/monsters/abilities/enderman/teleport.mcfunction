#> Enderman Teleport

#: reset timer
scoreboard players set @s monster_abilities 0

#: summon endermite
execute if predicate {condition:"random_chance","chance":0.3} at @s rotated as @s positioned ~ ~ ~ rotated ~ ~ run function core:monsters/summon/endermite

#: teleport
scoreboard players set @s monster_speed 1200
execute at @s run function core:monsters/movement/determine_speed
scoreboard players set @s monster_speed 23

#: playsound
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2
