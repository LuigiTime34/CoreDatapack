#> Health Update

#: get health value
execute store result score monster.health monster_health run data get entity @s Health 10

#: health split
function core:monsters/health/split

#: get max health
execute store result score monster.health_max monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base

#: set name
item modify entity @s armor.body core:get_display_data
data modify entity @s CustomName set from entity @s equipment.body.components."minecraft:custom_name"

#> Damage Indicators

#: find difference
scoreboard players operation monster.health monster_health -= @s monster_health

#: summon indicator
execute unless score monster.health monster_health matches 0 at @s run function core:monsters/health/indicator/summon

#> Get Current Health
execute store result score @s monster_health run data get entity @s Health 10
