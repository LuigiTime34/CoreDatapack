# Disabling method (current method)
execute as @n[tag=defense-warden] at @s run tag @e[distance=..10,tag=defense.tower_marker,sort=random,limit=1] add defense.warden_disabled
execute as @n[tag=defense-warden] at @s run tag @e[distance=..10,tag=defense.tower_marker,sort=random,limit=1] add defense.disabled
execute unless entity @n[tag=defense.tower_marker,tag=defense.warden_disabled] run return fail
execute as @n[tag=defense-warden] at @s facing entity @n[tag=defense.warden_disabled] feet anchored feet positioned ^ ^ ^ positioned ~ ~0.5 ~ run function core:monsters/boss/warden/start_ray
execute at @n[tag=defense-warden] run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 10