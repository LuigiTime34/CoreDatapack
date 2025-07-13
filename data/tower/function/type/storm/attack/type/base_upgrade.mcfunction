#> Storm Type Base Upgrade

#| Stats:
#| DMG: 10, RANGE: 11, COOLDOWN: 5s
#| PUSHBACK: 0.9 blocks

#> Attack Display
execute at @s positioned ~ -50 ~ run function tower:type/storm/attack/lightning/strike_visual

#: playsound
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 2 1.3

#: summon cloud
execute at @s positioned ~ -50 ~ run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.7 0.4 0.7 0 100 force
execute at @s positioned ~ -50 ~ run particle minecraft:small_gust ~ ~ ~ 0.7 0.4 0.7 0 150 force

#> Damage
damage @s 10 minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update

#> Pushback
scoreboard players set blow.power monster_distance 180
execute if entity @s[tag=monsters.riding_spider] on vehicle at @s positioned ^ ^ ^-0.9 run return run function tower:type/storm/attack/pushback
execute positioned ^ ^ ^-0.9 run function tower:type/storm/attack/pushback
