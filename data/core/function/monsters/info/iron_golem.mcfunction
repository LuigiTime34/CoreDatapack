title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Iron Golem\nSpeed: 2.2 BPS\nHealth: 250\nMakes all towers focus fire on itself, with permanent armor to reduce incoming attacks.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
