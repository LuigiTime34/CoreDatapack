scoreboard players set @s monster_abilities 100
scoreboard players set @s monster_speed 1200
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2
execute unless predicate {condition:"random_chance","chance":0.3} run return 0
function core:monsters/summon/endermite
execute at @s run tp @n[tag=monsters.new_endermite] ~ ~ ~ ~ ~
scoreboard players operation @n[tag=monsters.endermite,tag=monsters.new_endermite] monster_distance = @s monster_distance
tag @n[tag=monsters.endermite,tag=monsters.new_endermite] remove defense.new_endermite