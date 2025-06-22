$scoreboard players set @s towers_cooldown $(cooldown)
scoreboard players set @s towers_bee_cooldown 1
$execute at @e[tag=towers.bee_deployer,distance=..4.95,tag=towers.found_target] run summon text_display ~ ~-0.75 ~ {Tags:["towers.bee_display","towers.queen_bee_display"],teleport_duration:1,Passengers:[{id:"minecraft:bee",AngerTime:10000,NoAI:1b,Team:"defense_player",Tags:["towers.bee","towers.queen_bee"],Health:$(damage),Invulnerable:1b,attributes:[{id:"attack_knockback",base:$(speed)},{id:"scale",base:1.75},{id:"attack_damage",base:0}]}]}
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:cyan_wool run rotate @s 0 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:blue_wool run rotate @s -90 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:light_blue_wool run rotate @s -180 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:purple_wool run rotate @s 90 0

tag @e[tag=towers.found_target] remove defense.found_target