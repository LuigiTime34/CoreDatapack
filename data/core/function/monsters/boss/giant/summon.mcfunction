title @a times 5 60 20
#title @a title {text:"Boss has spawned!",font:"retitled_titles:regular",color:"#27FF06",type:"text"}
title @a title {text:"Boss has spawned!",color:"dark_red"}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1000000000000000000 0.7
bossbar set core:boss players @a
bossbar set core:boss visible true
bossbar set core:boss name {selector:"@n[tag=monsters.boss]",type:"selector"}
bossbar set core:boss max 1000
bossbar set core:boss value 1000
execute positioned 4 -59 146 run summon minecraft:giant ~ ~ ~ {CustomName:"Giant",CustomNameVisible:1b,Health:1000,NoAI:1b,Rotation:[90.0f,0.0f],Tags:["monster","monsters.show_health","monsters.giant","monsters.boss","monsters.new"],Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:1000},{id:"minecraft:attack_damage",base:50},{id:"minecraft:attack_knockback",base:15},{id:"minecraft:armor",base:0}],PersistenceRequired:1b,equipment:{body:{id:"minecraft:mud",count:1,components:{"minecraft:equippable":{slot:"body",equip_sound:"intentionally_empty"},"minecraft:item_name":"Giant"}}}}
execute as @a[advancements={core:mobs/giant=false}] run advancement grant @s only core:mobs/giant
execute positioned 4 -59 146 run scoreboard players set @n[tag=monsters.giant] monster_abilities 240