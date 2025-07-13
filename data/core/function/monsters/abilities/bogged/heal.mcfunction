#> Bogged Heal

#: reset timer
scoreboard players set @s monster_abilities 0

#: heal
execute store result score monster.health monster_health run data get entity @s Health 10
scoreboard players add monster.health monster_health 20
execute store result entity @s Health float 0.1 run scoreboard players get monster.health monster_health
function core:monsters/health/update

#: particle
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.3 0.3 0 2

#: playsound
playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 2 0.5

