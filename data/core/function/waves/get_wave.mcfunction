scoreboard objectives modify game_display displayname ""
clear @a[gamemode=adventure] minecraft:iron_helmet
scoreboard players set wave.timer game_wave 0
scoreboard players add wave.level game_wave 1
execute store result storage core:wave_number wave int 1 run scoreboard players get wave.level game_wave
function core:waves/next_wave with storage core:wave_number
bossbar set minecraft:defense.mobs_left name ["",{text:"WAVE ",bold:1b,color:"aqua",type:"text"},{score:{name:"wave.level",objective:"game_wave"},bold:1b,color:"aqua",type:"score"},{text:"/50",bold:1b,color:"aqua",type:"text"}]
# function core:scoreboard/get_highest