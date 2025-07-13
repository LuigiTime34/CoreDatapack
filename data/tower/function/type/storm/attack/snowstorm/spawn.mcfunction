#> Storm Snowstorm Spawn

#: summon
summon minecraft:marker ~ -59 ~ {Tags:["towers.snowstorm","snowstorm.new"]}

#: set lifespan
scoreboard players set @n[tag=snowstorm.new] towers_cooldown 100
tag @n[tag=snowstorm.new] remove snowstorm.new

#: start ticking
schedule function tower:type/storm/attack/snowstorm/tick 1t replace