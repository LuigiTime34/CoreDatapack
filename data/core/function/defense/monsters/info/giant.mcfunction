title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Giant\nSpeed: 1.4\nHealth: 500\nDeals 50 extra base damage. Every 12s, jumps into the air and sends a shockwave in all directions, disabling nearby towers.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
