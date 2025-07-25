$title @s actionbar {"text":"You placed a tower for $(sell_cost) gold!","color":"gold"}
$place template tower:panda/base ~$(x_offset) ~ ~$(z_offset) $(rotation)
$data modify entity @n[tag=towers.barrel_marker] data.x_offset set value $(x_offset)
$data modify entity @n[tag=towers.barrel_marker] data.z_offset set value $(z_offset)
$data modify entity @n[tag=towers.barrel_marker] data.rotation set value $(rotation)
$scoreboard players set @n[tag=towers.barrel_marker] game_money $(sell_cost)
execute as @n[tag=towers.panda_marker,tag=towers.off] run tag @s remove towers.off
execute as @n[tag=towers.barrel_marker] run function tower:global/rotate_back
execute as @n[tag=towers.panda] run function tower:global/rotate_back
execute as @n[tag=towers.barrel_marker] at @s positioned ^ ^ ^1.5 run tp @a[gamemode=adventure] ~ -59 ~
execute as @a[gamemode=adventure] at @s run function tower:global/rotate_player
playsound minecraft:block.smithing_table.use master @a ~ ~2 ~ 1 0.7
particle minecraft:end_rod ~ ~2 ~ .2 .1 .2 0.5 50