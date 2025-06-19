clear @s minecraft:iron_chestplate
# summon marker ~ ~ ~ {Tags:["defense.aerial_view_return"]}
gamemode spectator @s
spectate @e[tag=defense.aerial_view_marker,limit=1] @s
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1
tag @s add defense.aerial_view

execute unless items entity @s hotbar.8 * run return run item replace entity @s hotbar.8 with minecraft:iron_chestplate[minecraft:custom_name={text:"",extra:[{text:"Enter Aerial View",italic:0b,color:"green"}]},minecraft:lore=[{text:"",extra:[{text:"Right click to view your towers from above",color:"dark_gray"}]}],minecraft:equippable={slot:"chest"},!minecraft:attribute_modifiers,minecraft:item_model="minecraft:spyglass",minecraft:custom_data={defense.aerial_view:1b}]
give @s minecraft:iron_chestplate[minecraft:custom_name={text:"",extra:[{text:"Enter Aerial View",italic:0b,color:"green"}]},minecraft:lore=[{text:"",extra:[{text:"Right click to view your towers from above",color:"dark_gray"}]}],minecraft:equippable={slot:"chest"},!minecraft:attribute_modifiers,minecraft:item_model="minecraft:spyglass",minecraft:custom_data={defense.aerial_view:1b}]