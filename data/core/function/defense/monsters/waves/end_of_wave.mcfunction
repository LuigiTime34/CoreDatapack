# execute as @a run function tl:title {"text":"'Wave complete!'","tick":1,"location":"actionbar","sound":"'block.note_block.hat master @s ~ ~ ~ 1 2 1'"}
# Cleanup
tag @e[tag=defense.giant_disabled] remove defense.giant_disabled
tag @e[tag=defense.creeper_disabled] remove defense.creeper_disabled
function core:defense/monsters/waves/animation
scoreboard players set $wave_timer defense.wave 30
function core:defense/scoreboard/wave_timer
execute as @p[gamemode=adventure] unless items entity @s hotbar.4 * run return run item replace entity @s hotbar.4 with minecraft:iron_helmet[minecraft:custom_name={text:"",extra:[{text:"Start Next Wave",italic:0b,color:"green"}]},minecraft:lore=[{text:"",extra:[{text:"Right Click to begin the next wave.",color:"dark_gray"}]}],minecraft:equippable={slot:"head",equip_sound:"entity.iron_golem.repair",camera_overlay:"minecraft:red"},minecraft:item_model="green_concrete",minecraft:custom_data={defense.start_wave:1b},!minecraft:attribute_modifiers]
give @a[gamemode=adventure] minecraft:iron_helmet[minecraft:custom_name={text:"",extra:[{text:"Start Next Wave",italic:0b,color:"green"}]},minecraft:lore=[{text:"",extra:[{text:"Right Click to begin the next wave.",color:"dark_gray"}]}],minecraft:equippable={slot:"head",equip_sound:"entity.iron_golem.repair",camera_overlay:"minecraft:red"},minecraft:item_model="green_concrete",minecraft:custom_data={defense.start_wave:1b},!minecraft:attribute_modifiers]