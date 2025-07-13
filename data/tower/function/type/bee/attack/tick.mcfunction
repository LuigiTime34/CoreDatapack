#> Bee Tower Attack Tick

#: path limit
execute at @s unless block ~ -60 ~ #tower:bee_path run return run function tower:type/bee/attack/kill_bee

#: rotation
execute on vehicle rotated as @s on passengers run rotate @s ~ ~
execute at @s positioned ~ -59 ~ if entity @n[distance=..2.4,tag=monster] run rotate @s ~-180 0

#: move
#function tower:type/bee/attack/flying with entity @s attributes[{id:"minecraft:movement_speed"}]

#: damage
execute at @s positioned ~-0.55 ~ ~-0.055 as @n[dx=0,tag=monster] positioned ~-0.55 ~ ~-0.55 if entity @s[dx=0,tag=monster] run tag @s add attack.target
execute if entity @n[tag=attack.target] if function tower:type/bee/attack/target run function tower:type/bee/attack/kill_bee
