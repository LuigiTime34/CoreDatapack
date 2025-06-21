#: cooldown and execution
 execute if score @s monster_abilities matches 1.. run scoreboard players remove @s monster_abilities 1
 execute if score @s monster_abilities matches 1 run function core:monsters/abilities/enderman/teleport

 #: marker management to prevent rogue tping
 execute as @s[tag=!monsters.marked_enderman] at @s run function core:monsters/abilities/enderman/summon_enderman_marker
 execute as @e[tag=monsters.enderman_marker] at @s run function core:monsters/abilities/enderman/update_enderman_marker