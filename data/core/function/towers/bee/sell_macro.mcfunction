$scoreboard players add money. game_money $(sell_cost)
$tellraw @a[tag=!towers.selling_all] {"text":"+$(sell_cost) gold!","color":"gold"}
$title @a[tag=!towers.selling_all] actionbar {"text":"You sold your tower for $(sell_cost) gold!","color":"gold"}

function core:scoreboard/get_highest