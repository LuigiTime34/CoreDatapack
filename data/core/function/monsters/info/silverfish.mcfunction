title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Silverfish\nSpeed: 3.2 BPS\nHealth: 30\nBurrows underground for 2s every 3s, regenerating 3 health and becoming immune to damage. Immune to bees.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
