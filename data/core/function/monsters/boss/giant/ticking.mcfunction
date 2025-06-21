 #: shockwave jump and land
 execute unless score @s monster_abilities matches 6.. run tp @s ~ ~-0.8 ~
 execute if score @s monster_abilities matches 1 run scoreboard players set @s monster_abilities 250
 execute if score @s monster_abilities matches 1.. run scoreboard players remove @s monster_abilities 1
 #: shockwave cooldown
 execute if score @s monster_abilities matches 10 at @s run function core:monsters/boss/giant/shockwave_jump
 execute if score @s monster_abilities matches 249 at @s run function core:monsters/boss/giant/shockwave_land
 execute if score @s monster_abilities matches 190 run tag @e[tag=monsters.giant_disabled] remove defense.giant_disabled
 data merge entity @s {Fire:0}