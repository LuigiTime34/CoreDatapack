title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Enderman\nSpeed: 2.3 BPS\nHealth: 100\nPeriodically teleports 6 blocks ahead on the path; Has a 20% chance to summon an Endermite when teleporting.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
