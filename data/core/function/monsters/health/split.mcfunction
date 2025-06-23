#> Decimal Split

#: store integer
execute store result storage defense:monsters indicator.int int 0.1 run scoreboard players get monster.health monster_health

#: decimal removed value
execute store result score monster.int monster_health run data get storage defense:monsters indicator.int 10

#: scoreboard math
scoreboard players set monster.dec monster_health 0
execute if score monster.health monster_health > monster.int monster_health store result score monster.dec monster_health run scoreboard players get monster.health monster_health
execute if score monster.health monster_health < monster.int monster_health store result score monster.dec monster_health run scoreboard players get monster.int monster_health

execute if score monster.health monster_health > monster.int monster_health run scoreboard players operation monster.dec monster_health -= monster.int monster_health
execute if score monster.health monster_health < monster.int monster_health run scoreboard players operation monster.dec monster_health -= monster.health monster_health

#: store decimal
execute if score monster.dec monster_health matches 1.. store result storage defense:monsters indicator.dec int 1 run scoreboard players get monster.dec monster_health
execute if score monster.dec monster_health matches 0 run data modify storage defense:monsters indicator.dec set value ""

execute if score monster.dec monster_health matches 1.. run data modify storage defense:monsters indicator.dec_point set value "."
execute if score monster.dec monster_health matches 0 run data modify storage defense:monsters indicator.dec_point set value ""
