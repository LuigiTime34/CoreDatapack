#> Health Indicator Summon

#: damage split
function core:monsters/health/split

#: get operation sign
execute if score monster.health monster_health matches ..-1 run data modify storage defense:monsters indicator.difference_sign set value ""
execute if score monster.health monster_health matches -9..-1 run data modify storage defense:monsters indicator.difference_sign set value "-"
execute if score monster.health monster_health matches 1.. run data modify storage defense:monsters indicator.difference_sign set value "+"

#: set motion
execute store result storage defense:monsters indicator.motion[0] double 0.01 run random value -20..20
execute store result storage defense:monsters indicator.motion[1] double 0.01 run random value 30..40
execute store result storage defense:monsters indicator.motion[2] double 0.01 run random value -20..20

#: summon indicator
summon item ~ ~ ~ {Tags:["new","game.dmg_indicator"],Item:{id:"minecraft:stick", components:{item_model:"minecraft:air"}},Age:5980,PickupDelay:32767}
execute as @n[type=item,tag=new,tag=game.dmg_indicator] run function core:monsters/health/indicator/set
