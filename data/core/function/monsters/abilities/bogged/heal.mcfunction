execute store result score @s monster_damage run data get entity @s Health 10
scoreboard players operation @s monster_damage += bogged.10 monster_damage
execute store result storage core:monster_bogged_health health float 0.1 run scoreboard players get @s monster_damage
data modify entity @s Health set from storage core:monster_bogged_health health
data modify entity @s HurtTime set value 10
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.3 0.3 0 2
playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 2 0.5
scoreboard players set @s monster_abilities 20