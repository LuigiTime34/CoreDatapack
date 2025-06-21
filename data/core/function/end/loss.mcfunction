kill @e[tag=monster]
kill @e[tag=monsters.baby_zombie]
kill @e[tag=monsters.skeleton_rider]
kill @e[tag=monsters.illusioner]

gamemode spectator @p[gamemode=adventure]
scoreboard players set dead. game_progress 1

schedule function core:end/explode 15t append
schedule function core:end/explode 30t append
schedule function core:end/explode 45t append
schedule function core:end/explode 60t append
schedule function core:end/explode 75t append
schedule function core:end/explode 90t append
schedule function core:end/explode 105t append
schedule function core:end/explode 120t append