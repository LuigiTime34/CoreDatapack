data merge entity @s {powered:1b}
summon minecraft:marker ~ ~ ~ {Tags:["monsters.creeper_death"]}
ride @n[tag=monsters.creeper_death] mount @s
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 0.75
tag @s add monsters.charged_creeper
tag @s remove monsters.creeper
execute as @a[advancements={core:mobs/charged_creeper=false}] run advancement grant @s only core:mobs/charged_creeper