#> Bee Tower Attack Target

#: attack target
tag @s add bee.attack
execute as @n[tag=attack.target] run function tower:type/bee/attack/damage with entity @n[tag=bee.attack] attributes[{id:"minecraft:attack_damage"}]
tag @s remove bee.attack

#: successful hit
execute if entity @n[tag=attack.target] run return run tag @n[tag=attack.target] remove attack.target
