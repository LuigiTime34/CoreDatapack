title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Creeper\nSpeed: 2.4 BPS\nHealth: 70\nDeals bonus damage to player's base if it reaches the end; transforms into Charged Creeper if struck by lightning.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
