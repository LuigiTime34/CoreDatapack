execute at @s positioned ~ -59 ~ as @e[distance=..9,tag=defense.tower_marker] run tag @s add defense.creeper_disabled
execute at @s positioned ~ -59 ~ as @e[distance=..9,tag=defense.tower_marker] run tag @s add defense.disabled
execute at @s run particle minecraft:explosion_emitter ~ -57 ~ 1.8 0.5 1.8 0 25 force
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.7
scoreboard players set @s monster_abilities 60