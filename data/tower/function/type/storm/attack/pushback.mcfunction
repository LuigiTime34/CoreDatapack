#> Storm Attack Pushback

#: kb immune check
execute if entity @s[tag=monsters.knockback_immune] run return fail

#: pushback
tp @s ~ ~ ~
scoreboard players operation @s monster_distance -= blow.power monster_distance

#: enderman exception
execute if entity @s[type=enderman,tag=monster] run function core:monsters/abilities/enderman/marker