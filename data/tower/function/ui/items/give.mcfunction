#> UI Items Give

#: fail to give 
execute if items entity @s weapon.mainhand * run return 0

#: give item
$item replace entity @s weapon.mainhand with enchanted_book[custom_data={ui_item:true,$(custom_data):true},item_model="minecraft:barrier",enchantment_glint_override=false] 1

#: modify item
$item modify entity @s weapon.mainhand \
[\
 {"function": "minecraft:set_components","components": {"minecraft:item_model": "minecraft:$(item)"}}, \
 {"function": "minecraft:set_name","entity": "this","name": {"storage": "defense:items","nbt": "name","interpret": true}}, \
 {"function": "minecraft:set_lore","entity": "this","lore": [{"nbt": "desc.lore","storage": "defense:items","interpret": true}],"mode": "replace_all"} \
]
