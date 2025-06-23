kill @e[tag=towers.panda_landing]
kill @e[tag=towers.panda_tnt]
scoreboard players set wave.track game_wave 1
$function core:waves/wave_db/wave$(wave)
title @a times 10 60 10
#title @a title ["",{text:"\uF903\u0009WAVE ",color:"#26FF06",font:"retitled_titles:regular",type:"text"},{score:{name:"wave.level",objective:"game_wave"},color:"#26FF06",font:"retitled_titles:regular",type:"score"},{text:"\u000A",font:"retitled_titles:regular",color:"#26FF06",type:"text"}]
title @a title ["",{text:"WAVE ",color:"aqua"},{score:{name:"wave.level",objective:"game_wave"},color:"aqua",type:"score"}]
playsound minecraft:event.raid.horn master @a ~ ~ ~ 100000000000000000000