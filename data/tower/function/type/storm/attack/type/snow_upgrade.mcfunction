#> Storm Type Snow Base

#| Stats:
#| DMG: 12, RANGE: 12, COOLDOWN: 6s
#| PUSHBACK: 1.2 blocks
#| FREEZE: 5s, -0.5bps 

#> Attack Display
execute at @s positioned ~ -46 ~ run function tower:type/storm/attack/lightning/strike_visual

#: playsound
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 2 1.8

#: summon cloud
execute at @n[tag=towers.target] positioned ~ -46 ~ run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.7 -0.4 0.7 0 100 force
execute at @n[tag=towers.target] positioned ~ -46 ~ run particle minecraft:small_gust ~ ~ ~ 0.7 0.4 0.7 0 100 force
execute at @n[tag=towers.target] positioned ~ -46 ~ run particle dust_color_transition{from_color:[0.68,0.88,0.89],to_color:[0.87,0.95,0.96],scale:3.0} ~ ~ ~ 0.7 0.4 0.7 0 100 force
execute at @n[tag=towers.target] positioned ~ -46 ~ run particle minecraft:cloud ~ ~ ~ 0.7 0.4 0.7 0 100 force

#> Freeze Attack
schedule function tower:type/storm/attack/freeze/tick 1t replace
execute unless score @s towers_storm_freeze_timer matches 100.. run scoreboard players set @s towers_storm_freeze_timer 100
execute unless score @s towers_storm_freeze_power matches 5.. run scoreboard players set @s towers_storm_freeze_power 5
tag @s add towers.freeze

#: particles
playsound minecraft:entity.turtle.egg_break master @a ~ ~ ~ 1 0.5
particle minecraft:item_snowball ~ ~ ~ 0.2 1 0.2 0 50

#> Summon Snowstorm
execute at @s run kill @n[tag=towers.snowstorm,distance=..1.2]
execute at @s run function tower:type/storm/attack/snowstorm/spawn

#> Damage
damage @s 10 minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update

#> Pushback
scoreboard players set blow.power monster_distance 240
execute if entity @s[tag=monsters.riding_spider] on vehicle at @s positioned ^ ^ ^-1.2 run return run function tower:type/storm/attack/pushback
execute positioned ^ ^ ^-1.2 run function tower:type/storm/attack/pushback
