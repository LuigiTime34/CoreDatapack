$tp @s ^ ^ ^-$(blow_power)
$data modify storage core:storm_blowback power set value $(blow_power)
execute store result score blow.power monster_distance run data get storage core:storm_blowback power 100
scoreboard players operation @s monster_distance -= blow.power monster_distance