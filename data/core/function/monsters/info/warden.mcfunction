title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Warden\nSpeed: 2.5 BPS\nHealth: 1000\nHas permanent armor, and is immune to all forms of knockback. Every 5s, sends a sonic boom that disables a nearby tower.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
