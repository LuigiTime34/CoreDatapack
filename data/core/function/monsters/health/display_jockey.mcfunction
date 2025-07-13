#> Health Display Jockey 

#: set name
item modify entity @s armor.body core:get_display_data
data modify entity @s CustomName set from entity @s equipment.body.components."minecraft:custom_name"

#: set passenger name
execute on passengers run item modify entity @s armor.body core:get_display_data
execute on passengers run data modify entity @s CustomName set from entity @s equipment.body.components."minecraft:custom_name"
