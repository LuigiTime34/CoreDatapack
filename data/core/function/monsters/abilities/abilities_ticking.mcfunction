#> Spider
 #: set rotation and distance of skeleton from spider
 execute as @e[tag=defense-skeleton,tag=defense.riding_spider] at @s run function core:monsters/abilities/spider/skeleton_ticking
 execute as @e[tag=defense-spider] run function core:monsters/abilities/spider/spider_ticking

#> Witch
 #: ability cooldown and execution
 execute as @e[tag=defense-monster,tag=defense-witch] at @s run function core:monsters/abilities/witch/ticking

#> Bogged
 #: healing ability cooldown
 execute as @e[tag=defense-monster,tag=defense-bogged] at @s run function core:monsters/abilities/bogged/ticking

 #: double speed at half health
 execute as @e[tag=defense-monster,tag=defense-bogged] store result score @s monster_bogged_health run data get entity @s Health
 execute as @e[tag=defense-monster,tag=defense-bogged] if score @s monster_bogged_health matches ..39 unless score @s monster_speed matches 38 at @s run playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1
 execute as @e[tag=defense-monster,tag=defense-bogged] if score @s monster_bogged_health matches ..39 unless score @s monster_speed matches 38 at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.6 0.3 0 35
 execute as @e[tag=defense-monster,tag=defense-bogged] if score @s monster_bogged_health matches 40.. run scoreboard players set @s monster_speed 19
 #: set speed to normal when healed back
 execute as @e[tag=defense-monster,tag=defense-bogged] if score @s monster_bogged_health matches ..40 run scoreboard players set @s monster_speed 38

#> Silverfish
 #: burrow ability cooldown and execution
 execute as @e[type=minecraft:silverfish,tag=defense-silverfish] at @s run function core:monsters/abilities/silverfish/ticking

#> Enderman
 #: ability cooldown and execution
 execute as @e[tag=defense-monster,tag=defense-enderman] at @s run function core:monsters/abilities/enderman/ticking

#> Chicken Jockey (big and small)
 execute as @e[tag=defense-baby_zombie] at @s run function core:monsters/abilities/chicken_jockey/ticking

#> Zombified Piglin
 #: reinforcement summoning on damage
 execute as @e[tag=defense-zombified_piglin] if data entity @s {HurtTime:9s} if predicate {"condition": "minecraft:random_chance","chance": 0.75} at @s rotated ~ 0 positioned ^ ^ ^-0.2 run function core:monsters/abilities/zombified_piglin/summon_reinforcements

#> Charged Creeper
 #: detect death ticking
 execute as @e[tag=defense.creeper-death] run function core:monsters/abilities/charged_creeper/death_ticking

 #: tower disable ticking
 execute as @e[tag=defense.creeper_disabled] at @s run function core:monsters/abilities/charged_creeper/tower_disable
 
 #: disable display ticking
 execute as @e[tag=defense.creeper_display] at @s run function core:monsters/abilities/charged_creeper/display_ticking