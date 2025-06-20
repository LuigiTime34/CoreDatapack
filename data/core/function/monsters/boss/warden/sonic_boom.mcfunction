scoreboard players set @s monster_abilities 200
playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 10
schedule function core:monsters/boss/warden/play_sound 40t
# scoreboard players remove health.remaining monster_damage 10