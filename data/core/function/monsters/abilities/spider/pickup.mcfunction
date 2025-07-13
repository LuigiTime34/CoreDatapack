#> Spider Pickup

#: cooldown
execute if score @s monster_abilities matches -80..0 run return run scoreboard players add @s monster_abilities 1
execute if score @s monster_abilities matches 1 run scoreboard players reset @s monster_abilities

#: ride
execute at @s positioned ^ ^ ^0.25 unless entity @n[type=#core:spider_ridable,tag=!monsters.riding_spider,distance=..0.5] run return 0
execute at @s positioned ^ ^ ^0.25 run ride @n[type=#core:spider_ridable,tag=!monsters.riding_spider,distance=..0.5] mount @s

#: disable mob
execute on passengers run tag @s remove moving
execute on passengers run tag @s add monsters.riding_spider

#: deactivate spider
function core:monsters/abilities/spider/deactivate