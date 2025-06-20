tag @a add defense.selling_all
execute as @e[tag=tower-barrel-marker] at @s at @n[distance=..5,tag=panda-center-marker,tag=!defense.off] run function core:towers/panda/sell
execute as @e[tag=tower-barrel-marker] at @s at @n[distance=..5,tag=storm-center-marker,tag=!defense.off] run function core:towers/storm/sell
execute as @e[tag=tower-barrel-marker] at @s at @n[distance=..5,tag=bee-center-marker,tag=!defense.off] run function core:towers/bee/sell
tag @a remove defense.selling_all