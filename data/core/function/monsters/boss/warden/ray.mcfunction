#Running custom per-step commands.

particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 0 force

#Run a function if a block was successfully detected.

execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=monsters.warden_disabled,sort=nearest] run function core:monsters/boss/warden/check_hit_entity
scoreboard players add #distance vdvcasttemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..150 positioned ^ ^ ^0.1 run function core:monsters/boss/warden/ray