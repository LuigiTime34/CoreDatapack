#> UI Tick

#: highlight barrel
data modify entity @s Glowing set value false
execute if entity @p[distance=..10] run data modify entity @s Glowing set value true

#: check for items
execute at @s if block ~ ~ ~ barrel[open=true] as @a[distance=..5.5] run function tower:ui/check_for_item
