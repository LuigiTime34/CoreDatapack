#> Wave Management
 #: wave end detection
 execute if score mobs.left game_wave matches ..0 unless score wave.timer game_wave matches 1.. unless score dead. game_progress matches 1 run function core:waves/end_of_wave
 #: cleanup
 execute if score wave.timer game_wave matches 0 run schedule clear core:scoreboard/wave_timer
 execute if score wave.timer game_wave matches 0 run clear @a[gamemode=adventure] minecraft:iron_helmet
 #: start next wave early
 execute as @a if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"head":{"items":"minecraft:iron_helmet","predicates":{"minecraft:custom_data":{"defense.start_wave":true}}}}}} run function core:waves/start_next_wave_early

 #: mobs left display
 execute store result bossbar minecraft:defense.mobs_left value run scoreboard players get mobs.left game_wave

 #: give glowing effect when few mobs remain
 execute if score mobs.left game_wave matches ..5 if score wave.level game_wave matches 9.. run effect give @e[tag=defense-monster] minecraft:glowing infinite 0 true