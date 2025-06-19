clear @a[gamemode=adventure] minecraft:iron_helmet
scoreboard players set $wave_timer defense.wave 0
schedule function core:defense/monsters/waves/get_wave 1t