#: speed ability on damage
 execute if data entity @s {HurtTime:9s} unless predicate {condition:"random_chance","chance":0.75} run return run function core:monsters/boss/ravager/attacked
#: speed ticking
 execute as @e[tag=monsters.ravager_speed] run function core:monsters/boss/ravager/speed_ticking
#: self damage for speed boost
 execute if score @s monster_abilities matches 1.. run scoreboard players remove @s monster_abilities 1
 execute if score @s monster_abilities matches 1 run function core:monsters/boss/ravager/damage_self
 execute if score @s monster_abilities matches 150 run scoreboard players set @s monster_speed 20