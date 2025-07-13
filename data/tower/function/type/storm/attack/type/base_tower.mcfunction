#> Storm Type Base

#| Stats:
#| DMG: 8, RANGE: 10, COOLDOWN: 5s
#| PUSHBACK: 0.7 blocks

#> Attack Display
execute at @s positioned ~ -50 ~ run function tower:type/storm/attack/lightning/strike_visual

#: playsound
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 2 2.0

#: summon cloud
execute at @s positioned ~ -50 ~ run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.7 0.4 0.7 0 100 force

#> Damage
damage @s 8 minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update

#> Pushback
scoreboard players set blow.power monster_distance 140
execute if entity @s[tag=monsters.riding_spider] on vehicle at @s positioned ^ ^ ^-0.7 run return run function tower:type/storm/attack/pushback
execute positioned ^ ^ ^-0.7 run function tower:type/storm/attack/pushback
