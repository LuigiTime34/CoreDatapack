#function core:towers/panda/placement/replace_items
execute as @n[tag=defense.tower_square] run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.5f]},interpolation_duration:2,start_interpolation:0,Glowing:0b}
execute unless score money. game_money matches 10.. run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 2 1
execute unless score money. game_money matches 10.. run return run tellraw @a {text:"Not enough gold!",color:"gold",type:"text"}

tag @n[tag=defense.tower_square] add defense.has_tower

scoreboard players remove money. game_money 10

function core:scoreboard/get_highest

execute if block ~ -60 ~-5 #core:path_blocks run scoreboard players set tower.rotation game_rotation 1
execute if block ~5 -60 ~ #core:path_blocks run scoreboard players set tower.rotation game_rotation 2
execute if block ~ -60 ~5 #core:path_blocks run scoreboard players set tower.rotation game_rotation 3
execute if block ~-5 -60 ~ #core:path_blocks run scoreboard players set tower.rotation game_rotation 4

execute as @p[gamemode=adventure] if score @s game_rotation matches -45..45 if block ~ -60 ~-5 #core:path_blocks run scoreboard players set tower.rotation game_rotation 1
execute as @p[gamemode=adventure] if score @s game_rotation matches 46..135 if block ~5 -60 ~ #core:path_blocks run scoreboard players set tower.rotation game_rotation 2
execute as @p[gamemode=adventure] if score @s game_rotation matches 136..180 if block ~ -60 ~5 #core:path_blocks run scoreboard players set tower.rotation game_rotation 3
execute as @p[gamemode=adventure] if score @s game_rotation matches -180..-135 if block ~ -60 ~5 #core:path_blocks run scoreboard players set tower.rotation game_rotation 3
execute as @p[gamemode=adventure] if score @s game_rotation matches -136..-44 if block ~-5 -60 ~ #core:path_blocks run scoreboard players set tower.rotation game_rotation 4
execute if score tower.rotation game_rotation matches 1 as @p[gamemode=adventure] run function core:towers/panda/placement/init_placement {rotation:"none",x_offset:"-3",z_offset:"-3",sell_cost:"10"}
execute if score tower.rotation game_rotation matches 2 as @p[gamemode=adventure] run function core:towers/panda/placement/init_placement {rotation:"clockwise_90",x_offset:"3",z_offset:"-3",sell_cost:"10"}
execute if score tower.rotation game_rotation matches 3 as @p[gamemode=adventure] run function core:towers/panda/placement/init_placement {rotation:"180",x_offset:"3",z_offset:"3",sell_cost:"10"}
execute if score tower.rotation game_rotation matches 4 as @p[gamemode=adventure] run function core:towers/panda/placement/init_placement {rotation:"counterclockwise_90",x_offset:"-3",z_offset:"3",sell_cost:"10"}