
#> Silverfish
 #: burrow ability
 execute if entity @s[type=silverfish,tag=monster.ability] if score @s monster_health matches 1..299 at @s run function core:monsters/abilities/silverfish/loop

 #: cooldown
 execute if entity @s[type=silverfish,tag=monster.ability] if score @s monster_health matches 300 if score @s monster_abilities matches -100..-1 run scoreboard players add @s monster_abilities 1


#> Charged Creeper
 #: detect death 
 execute if entity @s[type=marker,tag=monsters.creeper_death] at @s run function core:monsters/abilities/charged_creeper/death_detect
 
 #: disable tower
 execute if entity @s[type=marker,tag=monsters.creeper_disabled] at @s run function core:monsters/abilities/charged_creeper/tower_disable


#> Spider
 #: pickup
 execute if entity @s[type=spider,tag=monster] run function core:monsters/abilities/spider/pickup

 #: jockey
 execute if entity @s[type=spider,tag=monsters.has_mob] at @s run function core:monsters/abilities/spider/loop


#> Witch
 #: heal ability
 execute if entity @s[type=witch,tag=monster] at @s run function core:monsters/abilities/witch/loop


#> Chicken Jockey (big and small)
 #: death detect
 execute if entity @s[type=zombie,tag=monsters.riding_chicken] at @s run function core:monsters/abilities/chicken_jockey/death_detect


#> Enderman
 #: movement & teleport
 execute if entity @s[type=marker,tag=monsters.enderman_marker] at @s run function core:monsters/abilities/enderman/loop


#> Bogged
 #: healing ability cooldown
 execute if entity @s[type=bogged,tag=monster] at @s run function core:monsters/abilities/bogged/loop


#> Zombified Piglin
 #: reinforcement summoning
 execute if entity @s[type=zombified_piglin,tag=monsters.zombified_piglin_spawn] if data entity @s {HurtTime:1s} at @s if entity @e[type=zombified_piglin,tag=!monsters.zombified_piglin_spawn,distance=..5] if predicate {"condition": "minecraft:random_chance","chance": 0.7} run function core:monsters/abilities/zombified_piglin/summon_reinforcements

 #: leader guarentee
 execute if entity @s[type=zombified_piglin,tag=!monsters.zombified_piglin_spawn] if data entity @s {HurtTime:1s} at @s run function core:monsters/abilities/zombified_piglin/summon_reinforcements

