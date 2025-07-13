#> Storm Type Snow Base

#| Stats:
#| DMG: 10, RANGE: 12, COOLDOWN: 5s
#| PUSHBACK: 1.0 blocks
#| FREEZE: 4s, -0.3bps 

#> Attack Display
execute at @s positioned ~ -48 ~ run function tower:type/storm/attack/lightning/strike_visual

#: playsound
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 2 1.5

#: summon cloud
execute at @s positioned ~ -48 ~ run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.7 0.4 0.7 0 100 force
execute at @s positioned ~ -48 ~ run particle minecraft:cloud ~ ~ ~ 0.7 0.4 0.7 0 100 force
execute at @s positioned ~ -48 ~ run particle minecraft:small_gust ~ ~ ~ 0.7 0.4 0.7 0 100 force

#> Freeze Attack
schedule function tower:type/storm/attack/freeze/tick 1t replace
execute unless score @s towers_storm_freeze_timer matches 80.. run scoreboard players set @s towers_storm_freeze_timer 80
execute unless score @s towers_storm_freeze_power matches 3.. run scoreboard players set @s towers_storm_freeze_power 3
tag @s add towers.freeze

#: particles
playsound minecraft:entity.turtle.egg_break master @a ~ ~ ~ 1 0.5
particle minecraft:item_snowball ~ ~ ~ 0.2 1 0.2 0 50

#> Damage
damage @s 10 minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update

#> Pushback
scoreboard players set blow.power monster_distance 200
execute if entity @s[tag=monsters.riding_spider] on vehicle at @s positioned ^ ^ ^-1.0 run return run function tower:type/storm/attack/pushback
execute positioned ^ ^ ^-1.0 run function tower:type/storm/attack/pushback
