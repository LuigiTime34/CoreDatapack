 #: sonic boom ability
 execute if score @s monster_abilities matches 1.. run scoreboard players remove @s monster_abilities 1
 execute if score @s monster_abilities matches 1 at @s run function core:monsters/boss/warden/sonic_boom
 #: tower disable
 execute if score @s monster_abilities matches 75 run tag @e[tag=monsters.warden_disabled] remove defense.warden_disabled