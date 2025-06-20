title @a times 10 60 20
title @a title {text:"Boss has spawned!",font:"retitled_titles:regular",color:"#27FF06",type:"text"}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1000000000000000000 0.7
bossbar set core:defense.boss players @a
bossbar set core:defense.boss visible true
bossbar set core:defense.boss name {selector:"@n[tag=defense.boss]",type:"selector"}
bossbar set core:defense.boss max 400
bossbar set core:defense.boss value 400
execute positioned 4 -59 146 run summon minecraft:ravager ~ ~ ~ {CustomNameVisible:1b,Health:540,NoAI:1b,Rotation:[90.0f,0.0f],Tags:["defense-monster","defense.health_display","defense-ravager","defense.boss","defense.new_mob"],Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:400},{id:"minecraft:attack_damage",base:100},{id:"minecraft:attack_knockback",base:20}],PersistenceRequired:1b}

execute positioned 4 -59 146 run scoreboard players set @n[tag=defense-ravager] monster_abilities 150
execute as @a[advancements={core:mobs/ravager=false}] run advancement grant @s only core:mobs/ravager