#Check if an entity was detected.

execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=monster,tag=!vdvray,tag=!monsters.silverfish,sort=nearest] run function core:towers/bee/raycast_short/check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #core:blocks run function core:towers/bee/raycast_short/hit_block
execute if block ~ -60 ~ minecraft:grass_block run function core:towers/bee/raycast/hit_block
scoreboard players add #distance vdvcasttemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..600 positioned ^ ^ ^0.1 run function core:towers/bee/raycast_short/ray