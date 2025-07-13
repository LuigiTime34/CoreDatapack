#> Tower Placement Inactive

#: advancement
advancement revoke @a[advancements={tower:placement_active=true}] only tower:placement_active
advancement revoke @a[advancements={tower:placement_sound=true}] only tower:placement_sound

#: search scores
scoreboard players reset @e[type=interaction,tag=towers.tower_placer] tower_placement
scoreboard players set max.id tower_placement 0
tag @e[tag=looking.candidate] remove looking.candidate

#: player scores
scoreboard players reset @a tower_placement

#: deactivate tower placers
execute as @e[type=interaction,tag=active.placement] run data modify entity @s width set value 0.0f
tag @e[type=interaction,tag=placement.active] remove placement.active
tag @e[type=interaction,tag=active.placement] remove active.placement

#: tiles
execute as @e[tag=towers.square] run data modify entity @s Glowing set value false
