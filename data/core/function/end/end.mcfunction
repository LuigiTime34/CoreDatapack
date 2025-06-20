title @a times 100 30 10
title @a title "\uE035"
clear @p[gamemode=adventure]
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1000000000000000000 0.7
schedule function core:end/cleanup 125t
$function core:end/$(outcome)