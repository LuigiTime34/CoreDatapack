tag @s add towers.chain_starter
$tag @n[tag=monster,distance=..$(chain_radius),tag=!towers.chain_starter] add defense.first_chain_target
# If no entity got tagged, stop immediately
execute unless entity @n[tag=towers.first_chain_target] run return run tag @s remove towers.chain_starter
# Otherwise, start the chain
# Summon storm cloud
summon minecraft:marker ~ -53 ~ {Tags:["towers.storm_cloud"]}
execute as @e[tag=towers.storm_cloud] at @s run particle minecraft:campfire_cosy_smoke ~ -52 ~ 0.7 0.4 0.7 0 300 force
# Initial raycast to the first target
execute as @n[tag=towers.storm_cloud] at @s anchored eyes run function core:towers/storm/chain/starter_raycast with storage core:storm_raycast
execute as @n[tag=towers.first_chain_target] at @s run function core:towers/storm/chain/chain_loop with storage core:storm_raycast
# Clean up
tag @s remove towers.chain_starter
tag @n[tag=monster,tag=towers.first_chain_target] remove defense.first_chain_target
kill @n[tag=towers.storm_cloud]