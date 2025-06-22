$title @s actionbar {"text":"You placed a tower for $(sell_cost) gold!","color":"gold"}
$place template core:towers/bee/base ~$(x_offset) ~ ~$(z_offset) $(rotation)
$data modify entity @n[tag=towers.barrel_marker] data.x_offset set value $(x_offset)
$data modify entity @n[tag=towers.barrel_marker] data.z_offset set value $(z_offset)
$data modify entity @n[tag=towers.barrel_marker] data.rotation set value $(rotation)
$scoreboard players set @n[tag=towers.barrel_marker] game_money $(sell_cost)
execute as @n[tag=towers.bee_marker,tag=towers.off] run tag @s remove towers.off
execute as @n[tag=towers.barrel_marker] run function core:towers/global/rotate_back
execute as @n[tag=towers.barrel_marker] at @s positioned ^ ^ ^1.5 run tp @a[gamemode=adventure] ~ -59 ~
execute as @a[gamemode=adventure] at @s run function core:towers/global/rotate_player
execute if block ~ -60 ~-4.5 #core:path_blocks run summon minecraft:marker ~ -57.5 ~-4.8 {Tags:["towers.bee_deployer"]}
execute if block ~ -60 ~4.5 #core:path_blocks run summon minecraft:marker ~ -57.5 ~4.8 {Tags:["towers.bee_deployer"]}
execute if block ~-4.5 -60 ~ #core:path_blocks run summon minecraft:marker ~-4.8 -57.5 ~ {Tags:["towers.bee_deployer"]}
execute if block ~4.5 -60 ~ #core:path_blocks run summon minecraft:marker ~4.8 -57.5 ~ {Tags:["towers.bee_deployer"]}
execute as @e[tag=towers.bee_deployer] at @s if block ~ -62 ~ minecraft:cyan_wool run rotate @s 0 0
execute as @e[tag=towers.bee_deployer] at @s if block ~ -62 ~ minecraft:blue_wool run rotate @s -90 0
execute as @e[tag=towers.bee_deployer] at @s if block ~ -62 ~ minecraft:light_blue_wool run rotate @s -180 0
execute as @e[tag=towers.bee_deployer] at @s if block ~ -62 ~ minecraft:purple_wool run rotate @s 90 0
playsound minecraft:block.smithing_table.use master @a ~ ~2 ~ 1 0.7
particle minecraft:end_rod ~ ~2 ~ .2 .1 .2 0.5 50