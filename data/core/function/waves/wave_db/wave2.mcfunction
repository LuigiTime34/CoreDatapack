execute if score wave.track game_wave matches 1 run scoreboard players set mobs.left game_wave 2
execute if score wave.track game_wave matches 1 store result bossbar minecraft:mobs_left max run scoreboard players get mobs.left game_wave
execute if score wave.track game_wave matches 1 positioned 4 -59 146 run function core:monsters/summon/zombie
execute if score wave.track game_wave matches 2 positioned 4 -59 146 run function core:monsters/summon/zombie
execute if score wave.track game_wave matches 1..2 run schedule function core:waves/wave_db/wave2 3s
execute if score wave.track game_wave matches 1..2 run scoreboard players add wave.track game_wave 1
