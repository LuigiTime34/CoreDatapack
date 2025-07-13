#> Storm Type Surge Base

#| Stats:
#| DMG: 12, RANGE: 17, COOLDOWN: 4s
#| PUSHBACK: 0.5 blocks
#| CHAIN ATTACK: TARGETS: 3, DMG: 3, RADIUS: 4

#> Attack Display
execute at @s positioned ~ -48 ~ run function tower:type/storm/attack/lightning/strike_visual

#: playsound
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 2 1.0

#: summon cloud
execute at @n[tag=towers.target] positioned ~ -48 ~ run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.7 0.4 0.7 0 150 force
execute at @n[tag=towers.target] positioned ~ -48 ~ run particle dust_color_transition{from_color:[0.34,0.35,0.42],to_color:[0.41,0.49,0.58],scale:3.0} ~ ~ ~ 0.7 0.4 0.7 0 150 force

#> Chain Attack
execute at @s positioned ^ ^ ^-2.0 run tag @e[tag=monster,distance=..2.0,tag=!towers.target,sort=nearest,limit=2] add towers.chain_target
execute as @e[tag=towers.chain_target] run damage @s 3 minecraft:mob_attack_no_aggro by @p
execute at @s positioned ~ -48 ~ as @e[tag=towers.chain_target] run function tower:type/storm/attack/chain

#: playsound
playsound minecraft:block.vault.close_shutter master @a ~ ~ ~ 10 1.8
playsound minecraft:block.vault.eject_item master @a ~ ~ ~ 10 1.8
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 10 0.5

#> Damage
damage @s 12 minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update

#> Pushback
scoreboard players set blow.power monster_distance 100
execute if entity @s[tag=monsters.riding_spider] on vehicle at @s positioned ^ ^ ^-0.5 run return run function tower:type/storm/attack/pushback
execute positioned ^ ^ ^-0.5 run function tower:type/storm/attack/pushback
