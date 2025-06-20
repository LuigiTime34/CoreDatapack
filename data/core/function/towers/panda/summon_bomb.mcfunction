playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 10 0.5
summon minecraft:item_display ~ ~2 ~ {item:{id:"minecraft:tnt",components:{"minecraft:item_model":"bamboom:bamboom"},count:1},teleport_duration:3,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},Tags:["defense.panda_tnt","defense.panda_new_bomb"]}
execute at @n[tag=defense-target] anchored eyes positioned ^ ^ ^2 run summon minecraft:marker ~ -59 ~ {Tags:["defense.panda_landing","defense.panda_new_landing"]}
execute as @n[tag=defense.panda_tnt] at @s at @n[tag=defense.panda_landing] positioned ~ -49 ~ run rotate @s facing ~ ~ ~
tag @n[tag=defense-target] remove defense-target
$scoreboard players set @n[tag=defense.panda_new_bomb] towers_panda_boo_damage $(damage)
$scoreboard players set @n[tag=defense.panda_new_bomb] towers_panda_bomb_range $(bomb_range)
$scoreboard players set @n[tag=defense.panda_new_landing] towers_panda_bomb_range $(bomb_range)
execute as @e[tag=defense.panda_new_bomb] store result score @s util_uuid run data get entity @s util_uuid[0]
scoreboard players operation @n[tag=defense.panda_new_landing] util_uuid = @n[tag=defense.panda_new_bomb] util_uuid
tag @n[tag=defense.panda_new_bomb] remove defense.panda_new_bomb
tag @n[tag=defense.panda_new_landing] remove defense.panda_new_landing