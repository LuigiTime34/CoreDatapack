execute if score wave.track game_wave matches 1 run scoreboard players set mobs.left game_wave 12
execute if score wave.track game_wave matches 1 store result bossbar minecraft:defense.mobs_left max run scoreboard players get mobs.left game_wave
execute if score wave.track game_wave matches 1 run function core:monsters/summon/zombified_piglin
execute if score wave.track game_wave matches 2 run function core:monsters/summon/creeper
execute if score wave.track game_wave matches 3 run function core:monsters/summon/spider
execute if score wave.track game_wave matches 4 run function core:monsters/summon/spider
execute if score wave.track game_wave matches 5 run function core:monsters/summon/enderman
execute if score wave.track game_wave matches 6 run function core:monsters/summon/chicken_jockey
execute if score wave.track game_wave matches 7 run function core:monsters/summon/skeleton
execute if score wave.track game_wave matches 8 run function core:monsters/summon/witch
execute if score wave.track game_wave matches 9 run function core:monsters/summon/creeper
execute if score wave.track game_wave matches 10 run function core:monsters/summon/zombie
execute if score wave.track game_wave matches 11 run function core:monsters/summon/skeleton
execute if score wave.track game_wave matches 12 run function core:monsters/summon/silverfish
execute if score wave.track game_wave matches 1..12 run schedule function core:waves/wave_db/wave36 30t
execute if score wave.track game_wave matches 1..12 run scoreboard players add wave.track game_wave 1
