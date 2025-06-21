$title @s actionbar {"text":"You placed a tower for $(sell_cost) gold!","color":"gold"}
$place template core:towers/storm/base ~$(x_offset) ~ ~$(z_offset) $(rotation)
$data modify entity @n[tag=towers.barrel_marker] data.x_offset set value $(x_offset)
$data modify entity @n[tag=towers.barrel_marker] data.z_offset set value $(z_offset)
$data modify entity @n[tag=towers.barrel_marker] data.rotation set value $(rotation)
$scoreboard players set @n[tag=towers.barrel_marker] game_money $(sell_cost)
execute as @n[tag=towers.storm_marker,tag=towers.off] run tag @s remove towers.off
execute as @n[tag=towers.barrel_marker] run function core:towers/global/rotate_back
execute as @n[tag=towers.barrel_marker] at @s positioned ^ ^ ^1.5 run tp @p[gamemode=adventure] ~ -59 ~
execute as @p[gamemode=adventure] at @s run function core:towers/global/rotate_player
playsound minecraft:block.smithing_table.use master @a ~ ~2 ~ 1 0.7
particle minecraft:end_rod ~ ~2 ~ .2 .1 .2 0.5 50