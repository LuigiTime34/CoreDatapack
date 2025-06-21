#: tower disable
 scoreboard players add @s towers_cooldown 1
 particle minecraft:block_crumble{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 2 0.1 2 0 100
 execute unless entity @n[tag=monsters.giant] run tag @s remove monsters.giant_disabled