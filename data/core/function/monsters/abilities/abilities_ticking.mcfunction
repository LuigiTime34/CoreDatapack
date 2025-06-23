#> Spider
 #: set rotation and distance of skeleton from spider
 execute as @s[tag=monsters.skeleton,tag=monsters.riding_spider] at @s run function core:monsters/abilities/spider/skeleton_ticking
 execute as @s[tag=monsters.spider] run function core:monsters/abilities/spider/spider_ticking

#> Witch
 #: ability cooldown and execution
 execute as @s[tag=monsters.witch] at @s run function core:monsters/abilities/witch/ticking

#> Bogged
 #: healing ability cooldown
 execute as @s[tag=monsters.bogged] at @s run function core:monsters/abilities/bogged/ticking

#> Silverfish
 #: burrow ability cooldown and execution
 execute as @s[type=minecraft:silverfish,tag=monsters.silverfish] at @s run function core:monsters/abilities/silverfish/ticking

#> Enderman
 #: ability cooldown and execution
 execute as @s[tag=monsters.enderman] at @s run function core:monsters/abilities/enderman/ticking

#> Chicken Jockey (big and small)
 execute as @s[tag=monsters.baby_zombie] at @s run function core:monsters/abilities/chicken_jockey/ticking

#> Zombified Piglin
 #: reinforcement summoning on damage
 execute as @s[tag=monsters.zombified_piglin] if data entity @s {HurtTime:9s} if predicate {"condition": "minecraft:random_chance","chance": 0.75} at @s rotated ~ 0 positioned ^ ^ ^-0.2 run function core:monsters/abilities/zombified_piglin/summon_reinforcements

#> Charged Creeper
 #: detect death ticking
 execute as @s[tag=monsters.creeper_death] run function core:monsters/abilities/charged_creeper/death_ticking

 #: tower disable ticking
 execute as @s[tag=monsters.creeper_disabled] at @s run function core:monsters/abilities/charged_creeper/tower_disable
 
 #: disable display ticking
 execute as @s[tag=monsters.creeper_display] at @s run function core:monsters/abilities/charged_creeper/display_ticking