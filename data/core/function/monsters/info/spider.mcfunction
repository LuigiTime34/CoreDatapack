title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Spider\nSpeed: 2.6 BPS\nHealth: 30\nMoves fast; its short height makes it immune to bee towers. Carries skeleton.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
