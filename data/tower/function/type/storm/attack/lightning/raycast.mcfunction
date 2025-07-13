#> Lightning Raycast

#: particle
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force

#: random value
execute store result storage defense:towers storm.x double 0.01 run random value -30..30
execute store result storage defense:towers storm.y double 0.01 run random value -30..30

#: loop
$execute unless entity @n[tag=lightning.target,dx=0] facing entity @n[tag=lightning.target] eyes positioned ^$(x) ^$(y) ^0.1 run return run function tower:type/storm/attack/lightning/raycast with storage defense:towers storm
