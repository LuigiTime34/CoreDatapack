#> UI Items

#: get rotation
tag @n[tag=towers.barrel_marker] add active.barrel
execute at @n[tag=game.path_highlight] facing entity @n[tag=active.barrel] feet run tp @s ~ ~ ~ ~ 0

#> Bee Upgrades
$execute if items entity @s $(slot) *[custom_data~{bee_upgrade1:1b}] at @n[tag=towers.bee_marker] run function tower:placement/place {tower:'bee/upgrade1',cost:'40',tag:'bee',upgrade:'upgrade1'}
$execute if items entity @s $(slot) *[custom_data~{bee_upgrade_attack1:1b}] at @n[tag=towers.bee_marker] run function tower:placement/place {tower:'bee/upgrade_attack1',cost:'150',tag:'bee',upgrade:'upgrade_attack1'}
$execute if items entity @s $(slot) *[custom_data~{bee_upgrade_attack2:1b}] at @n[tag=towers.bee_marker] run function tower:placement/place {tower:'bee/upgrade_attack2',cost:'300',tag:'bee',upgrade:'upgrade_attack2'}
$execute if items entity @s $(slot) *[custom_data~{bee_upgrade_money1:1b}] at @n[tag=towers.bee_marker] run function tower:placement/place {tower:'bee/upgrade_money1',cost:'200',tag:'bee',upgrade:'upgrade_money1'}
$execute if items entity @s $(slot) *[custom_data~{bee_upgrade_money2:1b}] at @n[tag=towers.bee_marker] run function tower:placement/place {tower:'bee/upgrade_money2',cost:'400',tag:'bee',upgrade:'upgrade_money2'}
$execute if items entity @s $(slot) *[custom_data~{bee_sell:1b}] as @n[tag=active.barrel] at @n[tag=towers.bee_marker] run function tower:ui/sell

#> Storm Upgrades
$execute if items entity @s $(slot) *[custom_data~{storm_upgrade1:true}] at @n[tag=towers.storm_marker] run function tower:placement/place {tower:'storm/upgrade1',cost:'75',tag:'storm',upgrade:'upgrade1'}
$execute if items entity @s $(slot) *[custom_data~{storm_upgrade_snow1:true}] at @n[tag=towers.storm_marker] run function tower:placement/place {tower:'storm/upgrade_snow1',cost:'150',tag:'storm',upgrade:'upgrade_snow1'}
$execute if items entity @s $(slot) *[custom_data~{storm_upgrade_snow2:true}] at @n[tag=towers.storm_marker] run function tower:placement/place {tower:'storm/upgrade_snow2',cost:'300',tag:'storm',upgrade:'upgrade_snow2'}
$execute if items entity @s $(slot) *[custom_data~{storm_upgrade_surge1:true}] at @n[tag=towers.storm_marker] run function tower:placement/place {tower:'storm/upgrade_surge1',cost:'150',tag:'storm',upgrade:'upgrade_surge1'}
$execute if items entity @s $(slot) *[custom_data~{storm_upgrade_surge2:true}] at @n[tag=towers.storm_marker] run function tower:placement/place {tower:'storm/upgrade_surge2',cost:'300',tag:'storm',upgrade:'upgrade_surge2'}
$execute if items entity @s $(slot) *[custom_data~{storm_sell:true}] as @n[tag=active.barrel] at @n[tag=towers.storm_marker] run function tower:ui/sell

## PANDA UPGRADES
#$execute if items entity @s $(slot) *[custom_data~{panda_upgrade1:1b}] as @n[tag=towers.barrel_marker] at @n[tag=towers.panda_marker] run function tower:panda/placement/get_rotation {"building":'1',cost:'20',tag:'bee,"upgrade:'upgrade1'
#$execute if items entity @s $(slot) *[custom_data~{panda_upgrade_shoot1:1b}] as @n[tag=towers.barrel_marker] at @n[tag=towers.panda_marker] run function tower:panda/placement/get_rotation {"building":'_shoot1',cost:'150',tag:'bee,"upgrade:'upgrade1'
#$execute if items entity @s $(slot) *[custom_data~{panda_upgrade_shoot2:1b}] as @n[tag=towers.barrel_marker] at @n[tag=towers.panda_marker] run function tower:panda/placement/get_rotation {"building":'_shoot2',cost:'300',tag:'bee,"upgrade:'upgrade1'
#$execute if items entity @s $(slot) *[custom_data~{panda_upgrade_bamboom1:1b}] as @n[tag=towers.barrel_marker] at @n[tag=towers.panda_marker] run function tower:panda/placement/get_rotation {"building":'_bamboom1',cost:'150',tag:'bee,"upgrade:'upgrade1'
#$execute if items entity @s $(slot) *[custom_data~{panda_upgrade_bamboom2:1b}] as @n[tag=towers.barrel_marker] at @n[tag=towers.panda_marker] run function tower:panda/placement/get_rotation {"building":'_bamboom2',cost:'300',tag:'bee,"upgrade:'upgrade1'
#$execute if items entity @s $(slot) *[custom_data~{panda_sell:1b}] as @n[tag=towers.barrel_marker] at @n[tag=towers.panda_marker] run function tower:panda/sell

#: replace item
clear @s *[custom_data~{tower_upgrade:true}]

#: reset barrel
tag @e[tag=active.barrel] remove active.barrel
