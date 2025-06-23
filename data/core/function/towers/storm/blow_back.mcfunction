execute if entity @s[tag=monsters.creeper] run function core:monsters/abilities/charged_creeper/convert_to_charged
$damage @s $(damage) minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update
tag @s remove towers.target
playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 1 2
particle minecraft:gust_emitter_small ~ ~ ~ 0.1 0.1 0.1 0 3
summon minecraft:lightning_bolt ~ ~-10 ~
execute if entity @s[tag=monsters.warden] run return fail
$execute if entity @s[tag=monsters.skeleton] on vehicle at @s run return run function core:towers/storm/spider_jockey_fallback {"blow_power":"$(blow_power)"}
$tp @s ^ ^ ^-$(blow_power)
$data modify storage core:storm_blowback power set value $(blow_power)
execute store result score blow.power monster_distance run data get storage core:storm_blowback power 200
scoreboard players operation @s monster_distance -= blow.power monster_distance