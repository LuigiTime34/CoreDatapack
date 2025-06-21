# Keep player alive
effect give @a[gamemode=adventure] minecraft:saturation infinite 255 true
effect give @a[gamemode=adventure] minecraft:resistance infinite 5 true

# TP items to players
execute as @e[type=minecraft:item] at @s on origin run data modify entity @n[type=minecraft:item,tag=!tower.gold_item] Owner set from entity @s UUID
execute as @e[type=minecraft:item,tag=!game.dmd_indicator,tag=!tower.gold_item] run data modify entity @s PickupDelay set value 0s
execute as @e[type=minecraft:item] at @s on origin run tp @n[type=minecraft:item,tag=!towers.gold_display] @s

execute if score defense.started game_progress matches 1.. run function core:game_ticking