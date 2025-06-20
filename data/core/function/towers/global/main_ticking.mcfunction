execute as @s[tag=!bee-center-marker] at @s run rotate @s ~6 ~
execute as @s[tag=!bee-center-marker] at @s positioned ~ -58.5 ~ run function core:towers/global/get_range
#: manage tower cooldowns
execute unless score @s towers_cooldown matches 1.. run scoreboard players set @s towers_cooldown 2
execute if score @s towers_cooldown matches 1.. run scoreboard players remove @s towers_cooldown 1
execute if entity @s[tag=defense.disabled] run scoreboard players add @s towers_cooldown 1