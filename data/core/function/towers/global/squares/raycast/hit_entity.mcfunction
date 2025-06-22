#Mark the ray has having found an entity.

scoreboard players set #hit vdvcasttemp 1

#Running custom commands since the entity was found.

team join green @n[tag=towers.square]
tag @n[tag=towers.square] add game.green
execute as @n[tag=towers.square,tag=game.green] at @s positioned ~ -58.5 ~ run function core:towers/global/squares/translate_up with entity @p[gamemode=adventure] SelectedItem.components."minecraft:custom_data"
execute as @e[tag=towers.square,tag=!game.green] run data merge entity @s {Glowing:0b}