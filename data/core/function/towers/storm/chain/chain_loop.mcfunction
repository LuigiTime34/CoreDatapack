execute as @e[tag=towers.storm_cloud] at @s run particle minecraft:campfire_cosy_smoke ~ ~-52 ~ 0.5 0.3 0.5 0 100 force
# See if the max chain limit has been reached
$execute if score current.chain towers_storm matches $(max_chain_length).. run return run function core:towers/storm/chain/reset

scoreboard players add current.chain towers_storm 1
tag @s add towers.in_chain
$damage @s $(chain_damage) core:main by @p
playsound minecraft:block.vault.close_shutter master @a ~ ~ ~ 10 1.8
playsound minecraft:block.vault.eject_item master @a ~ ~ ~ 10 1.8
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 10 0.5

# If no other entities are found to be in the chain, stop and reset
$execute unless entity @n[tag=monster,distance=..$(chain_radius),tag=!towers.in_chain,tag=!towers.chain_starter] run return run function core:towers/storm/chain/reset

# Otherwise, continue the chain by doing raycast towards and them running the function again
tag @n[tag=monster,tag=!towers.in_chain,tag=!towers.chain_starter] add defense.chain_target
# Generate random numbers before raycast
execute store result storage core:storm_raycast x float .01 run random value -30..30
execute store result storage core:storm_raycast y float .01 run random value -30..30
execute as @n[tag=towers.storm_cloud] at @s anchored eyes run function core:towers/storm/chain/raycast with storage core:storm_raycast

execute as @n[tag=monster,tag=!towers.in_chain,tag=!towers.chain_starter] at @s run function core:towers/storm/chain/chain_loop with storage core:storm_raycast