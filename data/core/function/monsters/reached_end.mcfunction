tp @s ~ ~ ~

execute if entity @s[type=spider] on passengers run function core:monsters/abilities/spider/dismount
execute if entity @s[type=chicken] on passengers run function core:monsters/abilities/chicken_jockey/dismount

playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 100000000000 0.8
# playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 100000000000 0.8

execute store result score @s monster_damage run data get entity @s Health
execute store result score monsters.extra_damage monster_damage run attribute @s minecraft:attack_damage get
scoreboard players operation @s monster_damage += monsters.extra_damage monster_damage

scoreboard players set recent.hit monster_damage 20
scoreboard players operation recent.damage monster_damage += @s monster_damage
scoreboard players operation health.remaining monster_damage -= @s monster_damage

damage @s 9999 generic by @p

function core:scoreboard/get_highest

# See if the health has changed to uppdate the castle look
execute if score health.remaining monster_damage matches 251..500 unless block -63 -44 131 minecraft:yellow_concrete run function core:monsters/castle_stages/half_health
execute if score health.remaining monster_damage matches ..250 unless block -63 -44 131 minecraft:red_concrete run function core:monsters/castle_stages/low_health
execute if score health.remaining monster_damage matches 500.. unless block -63 -44 131 minecraft:lime_concrete run function core:monsters/castle_stages/reset

execute if score health.remaining monster_damage matches ..0 run function core:end/end {outcome:"loss"}