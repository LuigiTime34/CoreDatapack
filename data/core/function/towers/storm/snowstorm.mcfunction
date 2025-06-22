$function core:towers/storm/blow_back {"blow_power":"$(blow_power)","damage":"$(damage)"}
playsound minecraft:entity.turtle.egg_break master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.breeze.idle_ground master @a ~ ~ ~ 1
particle minecraft:item_snowball ~ ~ ~ 0.2 1 0.2 0 50
summon minecraft:marker ~ -57 ~ {Tags:["towers.snowstorm"]}
execute as @n[tag=towers.snowstorm] run scoreboard players set @s towers_cooldown 100