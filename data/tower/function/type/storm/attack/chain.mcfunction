#> Storm Chain Attack

#: lightning
tag @s add lightning.target
function tower:type/storm/attack/lightning/start
tag @s remove lightning.target

#: health update
function core:monsters/health/update

#: tag remove
tag @s remove towers.chain_target

#: convert creeper
execute if entity @s[type=creeper,tag=monsters.creeper] run function core:monsters/abilities/charged_creeper/convert
