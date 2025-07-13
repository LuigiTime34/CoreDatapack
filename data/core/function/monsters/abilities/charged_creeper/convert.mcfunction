#> Charged Creeper Convert

#: advancement
execute as @a[advancements={core:mobs/charged_creeper=false}] run advancement grant @s only core:mobs/charged_creeper

#: merge data
data merge entity @s {powered:1b,CustomName:"Charged Creeper"}
item modify entity @s armor.body core:update_name
function core:monsters/health/update

#: tag update
tag @s add monsters.charged_creeper
tag @s remove monsters.creeper

#: summon death detector
summon minecraft:marker ~ ~ ~ {Tags:["monsters.creeper_death","monster.ability","monsters.new"]}
ride @n[tag=monsters.creeper_death,tag=monsters.new] mount @s
tag @n[tag=monsters.new] remove monsters.new

#: playsound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 0.75
