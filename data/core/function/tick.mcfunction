# Keep player alive
effect give @p[gamemode=adventure] minecraft:saturation infinite 255 true
effect give @p[gamemode=adventure] minecraft:resistance infinite 5 true

# TP items to players
execute as @e[type=minecraft:item] at @s on origin run data modify entity @n[type=minecraft:item,tag=!defense.gold_item] Owner set from entity @s UUID
execute as @e[type=minecraft:item,tag=!hdr.dmg_indicator,tag=!defense.gold_item] run data modify entity @s PickupDelay set value 0s
execute as @e[type=minecraft:item] at @s on origin run tp @n[type=minecraft:item,tag=!defense.gold_display] @s


execute if score $defense-started progress matches 1.. run function core:defense/defense_ticking