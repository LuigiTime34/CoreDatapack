# Generate random numbers
execute store result storage core:storm_raycast x float .01 run random value -30..30
execute store result storage core:storm_raycast y float .01 run random value -30..30

particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force

# Looping
$execute facing entity @n[tag=!towers.in_chain,tag=towers.first_chain_target] feet positioned ^$(x) ^$(y) ^.1 unless entity @n[tag=!towers.in_chain,tag=towers.first_chain_target,distance=..0.3] run return run function core:towers/storm/chain/starter_raycast with storage core:storm_raycast