title @s actionbar {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"New mob found!",color:"red",bold:1b,type:"text"}
tellraw @s {text:"Chicken Jockey\nSpeed: 2.0 BPS\nHealth: 75 (Chicken: 50, Baby Zombie: 35)\nA slow chicken carrying a fast baby zombie; when the chicken dies, baby zombie continues at higher speed. Both are immune to bees.",color:"red",type:"text"}
execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1
#execute positioned 4 -59 146 run playsound minecraft:sound.custom.chicken_jockey master @a ~ ~ ~ 10000000000000
