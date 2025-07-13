#> Bee Tower Attack Summon Bee

#: summon bee
execute if entity @s[y_rotation=0.0] run summon text_display ~ ~ ~ {Tags:["towers.bee_display","moving","new"],Rotation:[0.0f,0.0f],teleport_duration:4,Passengers:[{id:"minecraft:bee",Rotation:[0.0f,0.0f],NoAI:1b,Team:"defense_player",Tags:["towers.bee","new"],Health:10,Invulnerable:1b,attributes:[{id:"movement_speed",base:0.125},{id:"attack_damage",base:2},{id:"scale",base:0.7}]}]}
execute if entity @s[y_rotation=90.0] run summon text_display ~ ~ ~ {Tags:["towers.bee_display","moving","new"],Rotation:[90.0f,0.0f],teleport_duration:4,Passengers:[{id:"minecraft:bee",Rotation:[90.0f,0.0f],NoAI:1b,Team:"defense_player",Tags:["towers.bee","new"],Health:10,Invulnerable:1b,attributes:[{id:"movement_speed",base:0.125},{id:"attack_damage",base:2},{id:"scale",base:0.7}]}]}
execute if entity @s[y_rotation=180.0] run summon text_display ~ ~ ~ {Tags:["towers.bee_display","moving","new"],Rotation:[180.0f,0.0f],teleport_duration:4,Passengers:[{id:"minecraft:bee",Rotation:[180.0f,0.0f],NoAI:1b,Team:"defense_player",Tags:["towers.bee","new"],Health:10,Invulnerable:1b,attributes:[{id:"movement_speed",base:0.125},{id:"attack_damage",base:2},{id:"scale",base:0.7}]}]}
execute if entity @s[y_rotation=270.0] run summon text_display ~ ~ ~ {Tags:["towers.bee_display","moving","new"],Rotation:[270.0f,0.0f],teleport_duration:4,Passengers:[{id:"minecraft:bee",Rotation:[270.0f,0.0f],NoAI:1b,Team:"defense_player",Tags:["towers.bee","new"],Health:10,Invulnerable:1b,attributes:[{id:"movement_speed",base:0.125},{id:"attack_damage",base:2},{id:"scale",base:0.7}]}]}

scoreboard players set @n[tag=towers.bee_display,tag=moving,tag=new] monster_speed 25
tag @e[tag=new] remove new
return 1
