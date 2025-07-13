#> Charged Creeper Explode

#: disable towers
execute at @s positioned ~ -59 ~ as @e[distance=..9,tag=tower] run tag @s add monsters.creeper_disabled
execute at @s positioned ~ -59 ~ as @e[distance=..9,tag=tower] run tag @s add monster.ability
execute at @s positioned ~ -59 ~ as @e[distance=..9,tag=tower] run tag @s add towers.disabled

#: display disabled towers
execute at @e[tag=monsters.creeper_disabled] unless entity @n[type=creeper,tag=monsters.creeper_display,distance=0..1] run summon minecraft:creeper ~ -59 ~ \
 {NoAI:1b,powered:1b,attributes:[{id:"minecraft:scale",base:8.0}],Invulnerable:1b, \
  active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}], \
  Tags:["monsters.creeper_display"], Team:"defense_player"}

#: particle
execute at @s run particle minecraft:explosion_emitter ~ -57 ~ 1.8 0.5 1.8 0 25 force

#: playsound
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 0.7
