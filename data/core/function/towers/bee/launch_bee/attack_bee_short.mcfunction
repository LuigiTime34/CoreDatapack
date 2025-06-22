$scoreboard players set @s towers_cooldown $(cooldown)
execute as @e[distance=..4.95,tag=towers.bee_deployer] at @s anchored eyes positioned ^ ^ ^ positioned ~ -58.9 ~ anchored feet run function core:towers/bee/raycast_short/start_ray
execute unless entity @n[tag=towers.found_target] run return run scoreboard players set @s towers_cooldown 2

execute as @e[distance=..4.95,tag=towers.bee_deployer,tag=towers.found_target] at @s run particle minecraft:wax_on ~ ~ ~ 0.5 0.75 0.5 0 15
execute if entity @s[tag=towers.upgrade_attack2] run scoreboard players add @s towers_bee_cooldown 1
$execute as @s[tag=towers.upgrade_attack2] run execute if score @s towers_bee_cooldown matches 6.. run return run function core:towers/bee/launch_bee/queen {"damage":"$(damage)","speed":"$(speed)","cooldown":"$(cooldown)"}

$execute at @e[tag=towers.bee_deployer,distance=..4.95,tag=towers.found_target] run summon text_display ~ ~-1 ~ {Tags:["towers.bee_display"],teleport_duration:1,Passengers:[{id:"minecraft:bee",AngerTime:10000,NoAI:1b,Team:"defense_player",Tags:["towers.bee","towers.short_bee"],Health:$(damage),Invulnerable:1b,attributes:[{id:"attack_knockback",base:$(speed)},{id:"attack_damage",base:0}]}]}
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:cyan_wool run rotate @s 0 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:blue_wool run rotate @s -90 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:light_blue_wool run rotate @s -180 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:purple_wool run rotate @s 90 0

tag @e[tag=towers.found_target] remove defense.found_target