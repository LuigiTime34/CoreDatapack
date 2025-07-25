#> Game Ticking

#> Wave Management
#function core:waves/wave_management

#> Monster Abilities
 execute as @e[tag=monster.ability] run function core:monsters/abilities/abilities_ticking

#> Monster Movement
 execute as @e[tag=moving] at @s run function core:monsters/movement/determine_speed


##> Bossbar Management
# #: hide boss bar when no boss present
# execute unless entity @n[tag=monsters.boss] run bossbar set core:boss visible false
# execute if entity @n[tag=monsters.boss] run bossbar set core:boss name {selector:"@n[tag=monsters.boss]",type:"selector"}
#
##> Boss Abilities
#execute if entity @e[tag=monsters.boss] run function core:monsters/boss/boss_ability_ticking

#> UI Display Management
 #: recent gold display
 execute if score recent.kill game_money matches 1.. run scoreboard players remove recent.kill game_money 1
 execute if score recent.kill game_money matches 0 run scoreboard players set recent.money game_money 0
 execute if score recent.kill game_money matches 0 run function core:scoreboard/get_highest

 #: recent damage display
 execute if score recent.hit monster_damage matches 1.. run scoreboard players remove recent.hit monster_damage 1
 execute if score recent.hit monster_damage matches 0 run scoreboard players set recent.damage monster_damage 0
 execute if score recent.hit monster_damage matches 0 run function core:scoreboard/get_highest

##>End of round
#execute as @a[gamemode=spectator] if score dead. game_progress matches 1 run spectate @n[tag=game.failure_view]
#execute if score dead. game_progress matches 1 run function core:end/clear_all_waves

#> Tower Ticking
function tower:tower_ticking
