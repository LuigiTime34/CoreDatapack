tag @s add towers.queen_bee_attacked
scoreboard players set @s towers_bee_util 10
$damage @n[tag=monster] $(damage) minecraft:mob_attack_no_aggro by @p
function core:monsters/health/update
playsound minecraft:entity.bee.sting master @a ~ ~ ~ 1 1
execute on passengers unless data entity @s {Health:1.0f} run return run damage @s 1 minecraft:out_of_world
execute on passengers run kill @s
kill @s