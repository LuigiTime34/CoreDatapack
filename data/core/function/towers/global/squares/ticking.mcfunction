execute as @s[tag=defense.green] run team leave @s
execute as @s[tag=defense.green] run tag @s remove defense.green
execute as @s[tag=!defense.green] run data merge entity @s {transformation:{scale:[6.0f,6.0f,0.5f]},interpolation_duration:2,start_interpolation:0,item:{id:"minecraft:white_stained_glass_pane"}}