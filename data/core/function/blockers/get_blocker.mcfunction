execute store result score @s game_blockers run random value 1..6
execute if score @s game_blockers matches 1 run function core:blockers/place_blocker {blocker:"boulder1"}
execute if score @s game_blockers matches 2 run function core:blockers/place_blocker {blocker:"boulder2"}
execute if score @s game_blockers matches 3 run function core:blockers/place_blocker {blocker:"bush"}
execute if score @s game_blockers matches 4 run function core:blockers/place_blocker {blocker:"tree"}
execute if score @s game_blockers matches 5 run function core:blockers/place_blocker {blocker:"ruins1"}
execute if score @s game_blockers matches 6 run function core:blockers/place_blocker {blocker:"ruins2"}