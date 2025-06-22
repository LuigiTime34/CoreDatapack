$scoreboard players add money. game_money $(money)
scoreboard players set recent.kill game_money 20
$scoreboard players add recent.money game_money $(money)
execute at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 5 2
execute at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 5 1.6
function core:scoreboard/get_highest
$scoreboard players set bee.money_made game_money $(money)
execute if score bee.money_made game_money matches 1.. at @n[tag=monster] run function core:towers/bee/gold_icon/summon
execute if score bee.money_made game_money matches 2.. at @n[tag=monster] run function core:towers/bee/gold_icon/summon
execute if score bee.money_made game_money matches 3.. at @n[tag=monster] run function core:towers/bee/gold_icon/summon