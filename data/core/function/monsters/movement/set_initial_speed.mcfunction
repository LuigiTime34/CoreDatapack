execute store result score @s monster_speed run attribute @s minecraft:attack_knockback base get
attribute @s minecraft:attack_knockback base set 0
execute store result score @s monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base 10
function core:monsters/health/update
tag @s remove monsters.new