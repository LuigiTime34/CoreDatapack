attribute @s minecraft:attack_knockback base set 150
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 10 0.5
playsound minecraft:item.mace.smash_air master @a ~ ~ ~ 10 0.5
particle minecraft:block_crumble{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 2 0.1 2 0 1000
execute positioned ~ -59 ~ as @e[distance=..13,tag=defense.tower_marker] run tag @s add defense.giant_disabled
execute positioned ~ -59 ~ as @e[distance=..13,tag=defense.tower_marker] run tag @s add defense.disabled

execute store result score @s game_wave run random value 1..2
execute if score @s game_wave matches 1 run function core:monsters/boss/giant/summon_armored_zombie
execute if score @s game_wave matches 2 run function core:monsters/boss/giant/summon_chicken_jockey