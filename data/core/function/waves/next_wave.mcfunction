kill @e[tag=towers.panda_landing]
kill @e[tag=towers.panda_tnt]
scoreboard players set wave.track game_wave 1
#execute if score wave.level game_wave matches 3 run function core:start/warning
$function core:waves/wave$(wave)
#execute if score wave.level game_wave matches 5 run function core:waves/destroy_tower
#execute if score wave.level game_wave matches 10 run function core:waves/destroy_tower2
title @a times 20 60 10
title @a title ["",{text:"\uF903\u0009WAVE ",color:"#26FF06",font:"retitled_titles:regular",type:"text"},{score:{name:"wave.level",objective:"game_wave"},color:"#26FF06",font:"retitled_titles:regular",type:"score"},{text:"\u000A",font:"retitled_titles:regular",color:"#26FF06",type:"text"}]
playsound minecraft:event.raid.horn master @a ~ ~ ~ 100000000000000000000