#> Bee Tower Raycast

#: monster check raycast
execute unless block ~ -60 ~ #tower:bee_path run return 0

#fill ~ ~ ~ ~ ~ ~ stone_slab[type=top]
#fill ~2 ~ ~2 ~2 ~ ~2 stone_slab[type=top]

execute if entity @e[dx=2,dz=2,dy=0,tag=monster] run return 1
execute positioned ^ ^ ^3 if function tower:type/bee/raycast run return 1
