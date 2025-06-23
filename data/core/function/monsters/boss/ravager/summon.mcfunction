title @a times 5 60 20
#title @a title {text:"Boss has spawned!",font:"retitled_titles:regular",color:"#27FF06",type:"text"}
title @a title {text:"Boss has spawned!",color:"dark_red"}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1000000000000000000 0.7
bossbar set core:boss players @a
bossbar set core:boss visible true
bossbar set core:boss name {selector:"@n[tag=monsters.boss]",type:"selector"}
bossbar set core:boss max 400
bossbar set core:boss value 400
execute positioned 4 -59 146 run summon minecraft:ravager ~ ~ ~ {CustomName:"Ravager",CustomNameVisible:1b,Health:540,NoAI:1b,Rotation:[90.0f,0.0f],Tags:["monster","monsters.show_health","monsters.ravager","monsters.boss","monsters.new"],Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:400},{id:"minecraft:attack_damage",base:100},{id:"minecraft:attack_knockback",base:20}],PersistenceRequired:1b,equipment:{body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Ravager"}}}}

execute positioned 4 -59 146 run scoreboard players set @n[tag=monsters.ravager] monster_abilities 150
execute as @a[advancements={core:mobs/ravager=false}] run advancement grant @s only core:mobs/ravager