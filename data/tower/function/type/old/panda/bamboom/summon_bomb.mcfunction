playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 10 0.5
summon minecraft:item_display ~ ~2 ~ {item:{id:"minecraft:tnt",components:{"minecraft:item_model":"bamboom:bamboom"},count:1},teleport_duration:3,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},Tags:["towers.panda_tnt","towers.panda_new_bomb"]}
execute at @n[tag=towers.target] anchored eyes positioned ^ ^ ^2 run summon minecraft:marker ~ -59 ~ {Tags:["towers.panda_landing","towers.panda_new_landing"]}
execute as @n[tag=towers.panda_tnt] at @s at @n[tag=towers.panda_landing] positioned ~ -49 ~ run rotate @s facing ~ ~ ~
tag @n[tag=towers.target] remove defense-target
$scoreboard players set @n[tag=towers.panda_new_bomb] towers_panda_boo_damage $(damage)
$scoreboard players set @n[tag=towers.panda_new_bomb] towers_panda_bomb_range $(bomb_range)
$scoreboard players set @n[tag=towers.panda_new_landing] towers_panda_bomb_range $(bomb_range)
execute as @e[tag=towers.panda_new_bomb] store result score @s util_uuid run data get entity @s UUID[0]
scoreboard players operation @n[tag=towers.panda_new_landing] util_uuid = @n[tag=towers.panda_new_bomb] util_uuid
tag @n[tag=towers.panda_new_bomb] remove towers.panda_new_bomb
tag @n[tag=towers.panda_new_landing] remove towers.panda_new_landing