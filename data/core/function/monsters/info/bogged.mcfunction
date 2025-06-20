title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Bogged\nSpeed: 2.6 BPS\nHealth: 80\nRegenerates 2 health per second; doubles movement speed when below half health, returns to normal speed if healed above half.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
