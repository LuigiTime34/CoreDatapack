#> Health Update

#: get health value
execute store result score monster.health monster_health run data get entity @s Health 10

#: health split
function core:monsters/health/split

#: get max health
execute store result score monster.health_max monster_health run data get entity @s attributes[{id:"minecraft:max_health"}].base

#: health display
execute if entity @s[tag=!monsters.jockey] run function core:monsters/health/display
execute if entity @s[tag=monsters.jockey] run function core:monsters/health/display_jockey

#> Damage Indicators

#: find difference
scoreboard players operation monster.health monster_health -= @s monster_health

#: summon indicator
execute if entity @s[tag=!micro.mob] unless score monster.health monster_health matches 0 at @s anchored eyes positioned ^ ^-0.75 ^ run function core:monsters/health/indicator/summon
execute if entity @s[tag=micro.mob] unless score monster.health monster_health matches 0 at @s anchored eyes positioned ^ ^-0.25 ^ run function core:monsters/health/indicator/summon

#> Get Current Health
execute store result score @s monster_health run data get entity @s Health 10
