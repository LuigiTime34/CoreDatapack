execute if score wave.animation game_wave matches 15 run scoreboard players set wave.animation game_wave 1
execute if score wave.animation game_wave matches 1 run scoreboard objectives modify game_display displayname {text:"W",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 2 run scoreboard objectives modify game_display displayname {text:"Wa",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 3 run scoreboard objectives modify game_display displayname {text:"Wav",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 4 run scoreboard objectives modify game_display displayname {text:"Wave",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 5 run scoreboard objectives modify game_display displayname {text:"Wave ",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 6 run scoreboard objectives modify game_display displayname {text:"Wave c",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 7 run scoreboard objectives modify game_display displayname {text:"Wave co",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 8 run scoreboard objectives modify game_display displayname {text:"Wave com",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 9 run scoreboard objectives modify game_display displayname {text:"Wave comp",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 10 run scoreboard objectives modify game_display displayname {text:"Wave compl",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 11 run scoreboard objectives modify game_display displayname {text:"Wave comple",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 12 run scoreboard objectives modify game_display displayname {text:"Wave complet",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 13 run scoreboard objectives modify game_display displayname {text:"Wave complete",color:"aqua",type:"text"}
execute if score wave.animation game_wave matches 14 run scoreboard objectives modify game_display displayname {text:"Wave complete!",color:"aqua",type:"text"}
scoreboard players add wave.animation game_wave 1
execute unless score wave.animation game_wave matches 15 run schedule function core:waves/animation 1t