title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Zombified Piglin\nSpeed: 2.3 BPS\nHealth: 35\nHas a 75% chance to clone itself when damaged, with the clone having the same health as the original; cannot be healed.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
