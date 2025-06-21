execute as @e[tag=monsters.spider] on passengers on vehicle run tag @s add monsters.bomb_immunity
$execute as @e[tag=monster,distance=..$(range),tag=!monsters.bomb_immunity] run damage @s $(damage) core:main by @p
execute as @e[tag=monsters.spider] run tag @s remove monsters.bomb_immunity
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.5
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 0
kill @s