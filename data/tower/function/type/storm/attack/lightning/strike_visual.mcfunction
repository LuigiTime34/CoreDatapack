#> Storm Lightning Strike Visual

#: attack display
#summon lightning_bolt ~ 400 ~
particle minecraft:gust_emitter_small ~ -59 ~ 0.1 0.1 0.1 0 3
playsound minecraft:entity.breeze.wind_burst master @a ~ -59 ~ 1 2

#: lightning target
tag @s add lightning.target
execute facing entity @s feet run function tower:type/storm/attack/lightning/start
