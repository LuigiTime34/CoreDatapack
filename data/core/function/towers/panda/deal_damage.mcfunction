execute if entity @s[tag=monsters.spider] on passengers on vehicle run return fail
$damage @s $(damage) minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 10 1.3