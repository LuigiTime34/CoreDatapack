#> Chicken Jockey Dismount

#: ride
ride @s dismount
data modify entity @s Invulnerable set value false

#: position
execute at @s run tp @s ~ -59 ~

#: tags
tag @s add moving
tag @s add monster
tag @s remove monster.ability
tag @s remove monsters.riding_chicken

#: set name
data merge entity @s[tag=monsters.baby_zombie] {CustomName:"Baby Zombie"}
data merge entity @s[tag=monsters.big_chicken_jockey] {CustomName:"Zombie"}
item modify entity @s armor.body core:update_name
function core:monsters/health/update
