# Generate random numbers
execute store result storage core:storm_raycast x float .01 run random value -30..30
execute store result storage core:storm_raycast y float .01 run random value -30..30

particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0

# Looping
$execute facing entity @n[tag=towers.storm_rod,tag=towers.rod_target] feet positioned ^$(x) ^$(y) ^.1 unless entity @n[tag=towers.storm_rod,tag=towers.rod_target,distance=..0.3] run return run function core:towers/storm/attacking_raycast with storage core:storm_raycast
tag @n[tag=towers.storm_rod,tag=towers.rod_target] remove defense.chain_target