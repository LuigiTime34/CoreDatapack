execute if entity @s[tag=defense-spider] on passengers on vehicle run return fail
damage. @s $(damage) core:main by @p
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 10 1.3