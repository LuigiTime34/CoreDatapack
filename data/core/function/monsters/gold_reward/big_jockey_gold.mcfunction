advancement revoke @s only core:mobs/gold_reward/big_jockey_reward

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.0

scoreboard players add money. game_money 15
scoreboard players set recent.kill game_money 20
scoreboard players add recent.money game_money 15

function core:scoreboard/get_highest
