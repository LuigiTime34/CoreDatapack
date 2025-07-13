#> Storm Range Indicator

#: range indicator
execute if entity @p[distance=..14.5] if entity @s[tag=towers.storm_base] positioned ^ ^ ^13.5 run return run particle small_gust ~ ~ ~ 0 0 0 0 0 force
execute if entity @p[distance=..15.5] if entity @s[tag=towers.upgrade1] positioned ^ ^ ^14.5 run return run particle small_gust ~ ~ ~ 0 0 0 0 0 force
execute if entity @p[distance=..16.5] if entity @s[tag=towers.upgrade_snow1] positioned ^ ^ ^15.5 run return run particle small_gust ~ ~ ~ 0 0 0 0 0 force
execute if entity @p[distance=..16.5] if entity @s[tag=towers.upgrade_snow2] positioned ^ ^ ^15.5 run return run particle small_gust ~ ~ ~ 0 0 0 0 0 force
execute if entity @p[distance=..21.5] if entity @s[tag=towers.upgrade_surge1] positioned ^ ^ ^20.5 run return run particle small_gust ~ ~ ~ 0 0 0 0 0 force
execute if entity @p[distance=..26.5] if entity @s[tag=towers.upgrade_surge2] positioned ^ ^ ^25.5 run return run particle small_gust ~ ~ ~ 0 0 0 0 0 force