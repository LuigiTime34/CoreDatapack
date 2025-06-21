#: base panda tower
 execute as @s[tag=!towers.upgrade1,tag=!towers.upgrade_shoot1,tag=!towers.upgrade_shoot2,tag=!towers.upgrade_bamboom1,tag=!towers.upgrade_bamboom2] if score @s towers_cooldown matches 1 at @s run function core:towers/panda/target_entity_normal {cooldown:"100",damage:"4",range:"11.5",age:"0",leaves:"none",scale:"1.0",translation:"-0.5"}
 
 #: panda tower upgrade
 execute as @s[tag=towers.upgrade1] if score @s towers_cooldown matches 1 at @s run function core:towers/panda/target_entity_normal {cooldown:"60",damage:"5",range:"11.5",age:"0",leaves:"small",scale:"1.0",translation:"-0.5"}
 
 #: shoot upgrade 1
 execute as @s[tag=towers.upgrade_shoot1,tag=!towers.disabled] if score @s towers_cooldown matches 10 at @s run function core:towers/panda/target_entity_shoots1 {cooldown:"10",damage:"4",range:"13.5",age:"1",leaves:"large",scale:"1.0",translation:"-0.5"}
 execute as @s[tag=towers.upgrade_shoot1,tag=!towers.disabled] if score @s towers_cooldown matches 5 at @s run function core:towers/panda/target_entity_shoots1 {cooldown:"5",damage:"4",range:"13.5",age:"1",leaves:"large",scale:"1.0",translation:"-0.5"}
 execute as @s[tag=towers.upgrade_shoot1] if score @s towers_cooldown matches 1 at @s run function core:towers/panda/target_entity_shoots1 {cooldown:"70",damage:"4",range:"13.5",age:"1",leaves:"large",scale:"1.0",translation:"-0.5"}
 
 #: shoot upgrade 2
 execute as @s[tag=towers.upgrade_shoot2,tag=!towers.disabled] if score @s towers_cooldown matches 20 at @s run function core:towers/panda/target_entity_shoots2 {cooldown:"20",damage:"4",range:"15.5",age:"1",leaves:"large",scale:"1.5",translation:"-0.75"}
 execute as @s[tag=towers.upgrade_shoot2,tag=!towers.disabled] if score @s towers_cooldown matches 15 at @s run function core:towers/panda/target_entity_shoots2 {cooldown:"15",damage:"4",range:"15.5",age:"1",leaves:"large",scale:"1.5",translation:"-0.75"}
 execute as @s[tag=towers.upgrade_shoot2,tag=!towers.disabled] if score @s towers_cooldown matches 10 at @s run function core:towers/panda/target_entity_shoots2 {cooldown:"10",damage:"4",range:"15.5",age:"1",leaves:"large",scale:"1.5",translation:"-0.75"}
 execute as @s[tag=towers.upgrade_shoot2,tag=!towers.disabled] if score @s towers_cooldown matches 5 at @s run function core:towers/panda/target_entity_shoots2 {cooldown:"5",damage:"4",range:"15.5",age:"1",leaves:"large",scale:"1.5",translation:"-0.75"}
 execute as @s[tag=towers.upgrade_shoot2] if score @s towers_cooldown matches 1 at @s run function core:towers/panda/target_entity_shoots2 {cooldown:"70",damage:"4",range:"15.5",age:"1",leaves:"large",scale:"1.5",translation:"-0.75"}
 
 #: bamboom upgrade 1
 execute as @s[tag=towers.upgrade_bamboom1] if score @s towers_cooldown matches 1 at @s run function core:towers/panda/target_entity_bomb {cooldown:"70",damage:"8",range:"12.5",bomb_range:"3"}
 
 #: bamboom upgrade 2
 execute as @s[tag=towers.upgrade_bamboom2,tag=!towers.disabled] if score @s towers_cooldown matches 10 at @s run function core:towers/panda/target_entity_multi_bomb {cooldown:"10",damage:"8",range:"13.5",bomb_range:"3"}
 execute as @s[tag=towers.upgrade_bamboom2,tag=!towers.disabled] if score @s towers_cooldown matches 5 at @s run function core:towers/panda/target_entity_multi_bomb {cooldown:"5",damage:"8",range:"13.5",bomb_range:"3"}
 execute as @s[tag=towers.upgrade_bamboom2] if score @s towers_cooldown matches 1 at @s run function core:towers/panda/target_entity_multi_bomb {cooldown:"80",damage:"8",range:"16.5",bomb_range:"3"}


#: remove tag to show particles after attack
 execute as @s[tag=!towers.upgrade1,tag=!towers.upgrade_shoot1,tag=!towers.upgrade_shoot2,tag=!towers.upgrade_bamboom1,tag=!towers.upgrade_bamboom2] if score @s towers_cooldown matches 100 at @s as @e[distance=..3.5,tag=towers.panda] run tag @s remove towers.panda_attacked
 execute as @s[tag=towers.upgrade1] if score @s towers_cooldown matches 60 at @s as @e[distance=..3.5,tag=towers.panda] run tag @s remove towers.panda_attacked
 execute as @s[tag=towers.upgrade_shoot1] if score @s towers_cooldown matches 70 at @s as @e[distance=..3.5,tag=towers.panda] run tag @s remove towers.panda_attacked
 execute as @s[tag=towers.upgrade_shoot2] if score @s towers_cooldown matches 70 at @s as @e[distance=..3.5,tag=towers.panda] run tag @s remove towers.panda_attacked