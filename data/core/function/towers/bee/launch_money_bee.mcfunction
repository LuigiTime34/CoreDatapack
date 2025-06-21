$scoreboard players set @s towers_cooldown $(cooldown)
execute as @e[distance=..4.95,tag=towers.bee_deployer] at @s anchored eyes positioned ^ ^ ^ positioned ~ -58.5 ~ anchored feet run function core:towers/bee/raycast/start_ray
execute unless entity @n[tag=towers.found_target] run return run scoreboard players set @s towers_cooldown 2

execute as @e[distance=..4.95,tag=towers.bee_deployer,tag=towers.found_target] at @s run particle minecraft:wax_on ~ ~ ~ 0.5 0.75 0.5 0 15

$execute at @e[tag=towers.bee_deployer,distance=..4.95,tag=towers.found_target] run summon text_display ~ ~ ~ {Tags:["towers.bee_display","towers.money_bee"],teleport_duration:1,Passengers:[{id:"minecraft:bee",HasNectar:1b,NoAI:1b,Glowing:1b,Team:"defense_player",Tags:["towers.bee"],Health:$(damage),Invulnerable:1b,attributes:[{id:"attack_knockback",base:$(speed)},{id:"attack_damage",base:$(money)}]},{id:"minecraft:block_display",block_state:{Name:"minecraft:oxeye_daisy"},Tags:["towers.bee_flower"],Glowing:1b}]}
execute as @n[type=minecraft:block_display,tag=towers.bee_flower] run function core:towers/bee/translate_flower
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:cyan_wool run rotate @s 0 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:blue_wool run rotate @s -90 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:light_blue_wool run rotate @s -180 0
execute as @e[tag=towers.bee_display] at @s if block ~ -62 ~ minecraft:purple_wool run rotate @s 90 0

tag @e[tag=towers.found_target] remove defense.found_target