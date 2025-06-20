#: tower disabling effects
 scoreboard players add @s towers_cooldown 1

 #: display dummy charged creeper on disable
 execute unless entity @n[distance=..3.5,tag=defense.creeper_display] run summon minecraft:creeper ~ ~-3 ~ {NoAI:1b,powered:1b,attributes:[{id:"minecraft:scale",base:8.0}],Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],Tags:["defense.creeper_display"],Team:"defense_player"}