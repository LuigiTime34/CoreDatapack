# Store each score into its respective storage.
execute store result storage core:scoreboard health int 1 run scoreboard players get health.remaining monster_damage
execute store result storage core:scoreboard money int 1 run scoreboard players get money. game_money
# also get the most recent gold gathered and damage taken
execute store result storage core:scoreboard recent_gold int 1 run scoreboard players get recent.money game_money
execute store result storage core:scoreboard recent_damage int 1 run scoreboard players get recent.damage monster_damage

# Get highest score for each category, and then add spaces to the scoreboard based on which one is the highest.
scoreboard players set #max game_display -2147483648

scoreboard players operation #max game_display > health.remaining monster_damage
scoreboard players operation #max game_display > money. game_money

execute if score health.remaining monster_damage = #max game_display store result storage core:scoreboard spaces int 1 run scoreboard players get health.remaining monster_damage
execute if score money. game_money = #max game_display store result storage core:scoreboard spaces int 1 run scoreboard players get money. game_money

function core:scoreboard/update_all with storage core:scoreboard