# First, see if the bee has reached the end of its path
execute if block ~ -62 ~ minecraft:black_wool on passengers run kill @s
execute if block ~ -62 ~ minecraft:black_wool run return run kill @s
# See if theres any mobs left
execute if score mobs.left game_wave matches ..0 on passengers run kill @s
execute if score mobs.left game_wave matches ..0 run return run kill @s

# rotate @s facing entity @n[tag=monster] eyes
function tower:bee/math/get_speed
execute as @n[tag=towers.bee] run data modify entity @s Rotation set from entity @n[tag=towers.bee_display] Rotation

execute on passengers at @s positioned ~ -59 ~ if entity @n[distance=..1.4,tag=monster] run rotate @s ~-180 ~
execute if entity @s[tag=!towers.queen_bee-display] positioned ~-0.5 ~ ~-0.5 if entity @n[dx=0,tag=monster] run function tower:bee/math/get_damage
execute if entity @s[tag=towers.queen_bee-display] positioned ~-0.5 ~-0.2 ~-0.5 if entity @n[dx=0,dy=1,tag=monster] run function tower:bee/math/get_damage
execute if entity @s[tag=towers.queen_bee_attacked] if score @s towers_bee_util matches 1.. run scoreboard players remove @s towers_bee_util 1
execute if entity @s[tag=towers.queen_bee_attacked] if score @s towers_bee_util matches 1 run tag @s remove towers.queen_bee_attacked