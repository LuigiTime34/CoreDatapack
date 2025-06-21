title @a times 10 60 20
title @a title {text:"Boss has spawned!",font:"retitled_titles:regular",color:"#27FF06",type:"text"}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1000000000000000000 0.7
bossbar set core:boss players @a
bossbar set core:boss visible true
bossbar set core:boss name {selector:"@n[tag=defense.boss]",type:"selector"}
bossbar set core:boss max 300
bossbar set core:boss value 300
execute positioned 4 -59 146 run summon minecraft:warden ~ ~ ~ {CustomNameVisible:1b,Health:300,NoAI:1b,Rotation:[90.0f,0.0f],Tags:["defense-monster","defense.health_display","defense-warden","defense.boss","defense.new_mob"],Team:"defense_enemies",attributes:[{id:"minecraft:max_health",base:300},{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:20},{id:"minecraft:armor",base:15}],PersistenceRequired:1b}
execute as @a[advancements={core:mobs/warden=false}] run advancement grant @s only core:mobs/warden
execute positioned 4 -59 146 run scoreboard players set @n[tag=defense-warden] monster_abilities 200