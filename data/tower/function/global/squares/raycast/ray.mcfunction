#Check if an entity was detected.

execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=minecraft:interaction,dx=0,tag=towers.tower_placer,tag=!game.has_tower,tag=!vdvray,sort=nearest] run function tower:global/squares/raycast/check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #core:blocks run function tower:global/squares/raycast/hit_block
scoreboard players add #distance vdvcasttemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..100 positioned ^ ^ ^0.1 run function tower:global/squares/raycast/ray