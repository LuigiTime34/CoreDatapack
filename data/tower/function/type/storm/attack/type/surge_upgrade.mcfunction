#> Storm Type Surge Base

#| Stats:
#| DMG: 15, RANGE: 22, COOLDOWN: 4s
#| PUSHBACK: 0.5 blocks
#| CHAIN ATTACK: TARGETS: 5, DMG: 5, RADIUS: 6

#> Attack Display
execute at @s positioned ~ -45 ~ run function tower:type/storm/attack/lightning/strike_visual

#: playsound
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 2 1.0

#: summon cloud
execute at @n[tag=towers.target] positioned ~ -45 ~ run particle minecraft:squid_ink ~ ~ ~ 0.7 0.4 0.7 0 150 force
execute at @n[tag=towers.target] positioned ~ -45 ~ run particle dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.21,0.21,0.21],scale:3.0} ~ ~ ~ 0.7 0.4 0.7 0 150 force
execute at @n[tag=towers.target] positioned ~ -45 ~ run particle minecraft:small_gust ~ ~ ~ 0.7 0.4 0.7 0 150 force
execute at @n[tag=towers.target] positioned ~ -45 ~ run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.7 0.4 0.7 0 150 force

#> Chain Attack
execute at @s positioned ^ ^ ^-3.0 run tag @e[tag=monster,distance=..3.0,tag=!towers.target,sort=nearest,limit=4] add towers.chain_target
execute as @e[tag=towers.chain_target] run damage @s 5 minecraft:mob_attack_no_aggro by @p
execute at @s positioned ~ -45 ~ as @e[tag=towers.chain_target] run function tower:type/storm/attack/chain

#: playsound
playsound minecraft:block.vault.close_shutter master @a ~ ~ ~ 10 1.8
playsound minecraft:block.vault.eject_item master @a ~ ~ ~ 10 1.8
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 10 0.5

#> Damage
damage @s 15 minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update

#> Pushback
scoreboard players set blow.power monster_distance 100
execute if entity @s[tag=monsters.riding_spider] on vehicle at @s positioned ^ ^ ^-0.5 run return run function tower:type/storm/attack/pushback
execute positioned ^ ^ ^-0.5 run function tower:type/storm/attack/pushback
