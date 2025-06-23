execute if score @s monster_abilities matches 1.. run scoreboard players remove @s monster_abilities 1
execute if score @s monster_abilities matches 1 run function core:monsters/abilities/bogged/heal

#: double speed at half health
 execute store result score @s monster_bogged_health run data get entity @s Health
 execute if score @s monster_bogged_health matches ..39 unless score @s monster_speed matches 38 at @s run playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1
 execute if score @s monster_bogged_health matches ..39 unless score @s monster_speed matches 38 at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.6 0.3 0 35
 execute if score @s monster_bogged_health matches 40.. run scoreboard players set @s monster_speed 19
 #: set speed to normal when healed back
 execute if score @s monster_bogged_health matches ..40 run scoreboard players set @s monster_speed 38