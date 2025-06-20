advancement revoke @s only core:mobs/gold_reward/breeze_reward

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.0
scoreboard players remove mobs.left game_wave 1

scoreboard players add money. game_money 20
scoreboard players set recent.kill game_money 20
scoreboard players add recent.money game_money 20

function core:scoreboard/get_highest
