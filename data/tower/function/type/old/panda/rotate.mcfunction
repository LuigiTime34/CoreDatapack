$execute if entity @n[tag=monster,distance=..$(range)] run rotate @s facing entity @n[tag=monster] feet
$execute unless entity @n[tag=monster,distance=..$(range)] run function tower:global/rotate_back