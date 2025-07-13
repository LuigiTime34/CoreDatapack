tp @s ~ ~2.9 ~
scoreboard players set @s towers_panda_boo_delay 20
$scoreboard players set @s towers_panda_boo_damage $(damage)
tag @s remove towers.new_boo
#scoreboard players operation @s util_uuid = @n[tag=towers.getting_uuid] util_uuid
#tag @n[tag=towers.getting_uuid] remove defense.getting_uuid