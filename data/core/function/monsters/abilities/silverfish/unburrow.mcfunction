#> Silverfish Unburrow

#: unburrow
data merge entity @s {Invulnerable:false,CustomNameVisible:true}
tp @s ~ -59 ~

#: add tags
tag @s add monster
tag @s add moving

#: heal
execute store result score monster.health monster_health run data get entity @s Health 10
scoreboard players add monster.health monster_health 30
execute if score monster.health monster_health matches 300.. run scoreboard players set monster.health monster_health 300
execute store result entity @s Health float 0.1 run scoreboard players get monster.health monster_health
function core:monsters/health/update

#: cooldown
scoreboard players set @s monster_abilities -100