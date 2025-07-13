execute if score wave.track game_wave matches 1 run scoreboard players set mobs.left game_wave 6
execute if score wave.track game_wave matches 1 store result bossbar minecraft:mobs_left max run scoreboard players get mobs.left game_wave
execute if score wave.track game_wave matches 1 positioned 4 -59 146 run function core:monsters/summon/skeleton
execute if score wave.track game_wave matches 2 positioned 4 -59 146 run function core:monsters/summon/spider_jockey
execute if score wave.track game_wave matches 3 positioned 4 -59 146 run function core:monsters/summon/spider_jockey
execute if score wave.track game_wave matches 4 run function core:monsters/boss/iron_golem_boss/summon
execute if score wave.track game_wave matches 5 positioned 4 -59 146 run function core:monsters/summon/zombie
execute if score wave.track game_wave matches 6 positioned 4 -59 146 run function core:monsters/summon/zombie
execute if score wave.track game_wave matches 1..6 run schedule function core:waves/wave_db/wave20 3s
execute if score wave.track game_wave matches 1..6 run scoreboard players add wave.track game_wave 1
