#> Zombified Piglin Summon Reinforcement

#: summon
execute if score @s monster_health matches 0..9 run return 0
execute at @s rotated as @s positioned ~ ~ ~ rotated ~ ~ run function core:monsters/summon/zombified_piglin_spawn

#: add to wave 
scoreboard players add mobs.left game_wave 1

#: playsound
playsound minecraft:entity.zombified_piglin.angry master @a ~ ~ ~ 1.7
