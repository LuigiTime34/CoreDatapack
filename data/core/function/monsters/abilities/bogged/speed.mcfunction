#> Bogged Speed

#: increase speed
scoreboard players set @s monster_speed 38

#: spider check
execute if entity @s[tag=monsters.riding_spider] run function core:monsters/abilities/spider/dismount
tag @s remove monsters.spider_ridable

#: particle
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.8 0.3 0 35

#: playsound
execute at @s run playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1
