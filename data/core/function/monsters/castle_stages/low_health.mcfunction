place template core:castle/25_health -69 -59 97
particle minecraft:explosion_emitter -63 -51 116 2 4 10 0 50 force
execute positioned -64 -59 116 run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 1000000 0.5
tellraw @a {text:"The castle has little remaining health!",color:"red",type:"text"}
