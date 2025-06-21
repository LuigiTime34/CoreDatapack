title @a times 10 60 20
title @a title {text:"Boss has spawned!",font:"retitled_titles:regular",color:"#27FF06",type:"text"}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1000000000000000000 0.7
bossbar set core:boss players @a
bossbar set core:boss visible true
bossbar set core:boss name {selector:"@n[tag=monsters.boss]",type:"selector"}
bossbar set core:boss max 220
bossbar set core:boss value 220
execute positioned 4 -59 146 run summon minecraft:iron_golem ~ ~ ~ {CustomNameVisible:1b,Health:250,NoAI:1b,Rotation:[90.0f,0.0f],Tags:["monster","monsters.show_health","monsters.iron_golem","monsters.boss","monsters.new"],Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:220},{id:"minecraft:attack_knockback",base:22},{id:"minecraft:armor",base:10},{id:"minecraft:attack_damage",base:0}],PersistenceRequired:1b}
execute as @a[advancements={core:mobs/iron_golem=false}] run advancement grant @s only core:mobs/iron_golem
execute positioned 4 -59 146 run scoreboard players set @n[tag=monsters.iron_golem] monster_distance 40000