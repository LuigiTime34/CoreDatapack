scoreboard objectives setdisplay sidebar
bossbar set minecraft:defense.mobs_left visible false
kill @e[tag=monster]
kill @e[tag=monsters.baby_zombie]
kill @e[tag=monsters.skeleton_rider]
kill @e[tag=monsters.illusioner]
scoreboard players set mobs.left game_wave 0
scoreboard players set wave.timer game_wave 0
function core:sell_all
gamemode adventure @p[tag=game.started]
tp @p[gamemode=adventure] -59 -59 116 90 0