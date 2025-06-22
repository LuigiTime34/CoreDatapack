#: base storm tower
 execute as @s[tag=!towers.upgrade1,tag=!towers.upgrade_snow1,tag=!towers.upgrade_snow2,tag=!towers.upgrade_surge1,tag=!towers.upgrade_surge2] if score @s towers_cooldown matches 1 at @s run function core:towers/storm/targets/target_entity {cooldown:"100",damage:"8",blow_power:"0.7",range:"13.5"}
 
 #: storm tower upgrade
 execute as @s[tag=towers.upgrade1] if score @s towers_cooldown matches 1 at @s run function core:towers/storm/targets/target_entity {cooldown:"100",damage:"10",blow_power:"0.9",range:"14.5"}
 
 #: snow upgrade 1
 execute as @s[tag=towers.upgrade_snow1] if score @s towers_cooldown matches 1 at @s run function core:towers/storm/targets/target_entity_snow {cooldown:"120",damage:"10",blow_power:"0.9",range:"15.5",freeze_time:"80",freeze_power:"3"}
 
 #: snow upgrade 2
 execute as @s[tag=towers.upgrade_snow2] if score @s towers_cooldown matches 1 at @s run function core:towers/storm/targets/target_entity_snow_storm {cooldown:"120",damage:"12",blow_power:"1.2",range:"15.5",freeze_time:"100",freeze_power:"5"}
 
 #: surge upgrade 1
 execute as @s[tag=towers.upgrade_surge1] if score @s towers_cooldown matches 1 at @s run function core:towers/storm/targets/target_entity_chain {cooldown:"80",damage:"12",blow_power:"0.5",range:"20.5",max_chain_length:"3",chain_radius:"4",chain_damage:"3"}
 
 #: surge upgrade 2
 execute as @s[tag=towers.upgrade_surge2] if score @s towers_cooldown matches 1 at @s run function core:towers/storm/targets/target_entity_chain {cooldown:"80",damage:"15",blow_power:"0.5",range:"25.5",max_chain_length:"5",chain_radius:"6",chain_damage:"5"}