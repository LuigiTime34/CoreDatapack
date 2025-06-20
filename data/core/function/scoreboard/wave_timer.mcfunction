execute unless score wave.timer game_wave matches 1 run schedule function core:scoreboard/wave_timer 1s
execute if score wave.timer game_wave matches 1..4 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score wave.timer game_wave matches 1.. run scoreboard players remove wave.timer game_wave 1
title @a[tag=!defense.aerial_view] actionbar ["",{text:"\u0004 ",type:"text"},{score:{name:"wave.timer",objective:"game_wave"},bold:1b,color:"gold",type:"score"}]
execute if score wave.timer game_wave matches 1 run schedule function core:waves/get_wave 1s