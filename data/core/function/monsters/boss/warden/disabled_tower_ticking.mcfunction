scoreboard players add @s towers_cooldown 1
particle minecraft:sculk_charge_pop ~ ~ ~ 1.5 2 1.5 0 200
execute unless entity @n[tag=monsters.warden] run tag @s remove monsters.warden_disabled