# Disabling method (current method)
execute as @n[tag=monsters.warden] at @s run tag @e[distance=..10,tag=tower,sort=random,limit=1] add defense.warden_disabled
execute as @n[tag=monsters.warden] at @s run tag @e[distance=..10,tag=tower,sort=random,limit=1] add defense.disabled
execute unless entity @n[tag=tower,tag=monsters.warden_disabled] run return fail
execute as @n[tag=monsters.warden] at @s facing entity @n[tag=monsters.warden_disabled] feet anchored feet positioned ^ ^ ^ positioned ~ ~0.5 ~ run function core:monsters/boss/warden/start_ray
execute at @n[tag=monsters.warden] run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 10