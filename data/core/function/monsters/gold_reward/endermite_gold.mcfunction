advancement revoke @s only core:mobs/gold_reward/endermite_reward

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.0
scoreboard players remove mobs.left game_wave 1

function core:scoreboard/get_highest
