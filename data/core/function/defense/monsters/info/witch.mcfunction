title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Witch\nSpeed: 2.1 BPS\nHealth: 50\nRegenerates itself and all nearby non-witch enemies for 4 health every 4s.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
