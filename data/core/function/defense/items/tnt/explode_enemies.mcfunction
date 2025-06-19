execute at @s run particle minecraft:explosion_emitter ~ -57 ~ 1.1 0.2 1.1 0 50 force
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.7
execute at @s as @e[distance=..7,tag=defense-monster] run damage @s 20 core:main by @p
kill @s