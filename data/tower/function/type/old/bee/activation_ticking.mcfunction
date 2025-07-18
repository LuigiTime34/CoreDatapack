 #: base bee tower
 execute as @s[tag=!towers.upgrade1,tag=!towers.upgrade_attack1,tag=!towers.upgrade_attack2,tag=!towers.upgrade_money1,tag=!towers.upgrade_money2] if score @s towers_cooldown matches 1 at @s run function tower:bee/launch_bee/normal {cooldown:"40",damage:"2",speed:20}
 
 #: bee tower upgrade
 execute as @s[tag=towers.upgrade1] if score @s towers_cooldown matches 1 at @s run function tower:bee/launch_bee/normal {cooldown:"35",damage:"3",speed:"25"}
 
 #: attack upgrade 1
 execute as @s[tag=towers.upgrade_attack1,tag=!towers.disabled] if score @s towers_cooldown matches 2 at @s run function tower:bee/launch_bee/attack_bee {damage:"2",speed:"30"}
 execute as @s[tag=towers.upgrade_attack1,tag=!towers.disabled] if score @s towers_cooldown matches 1 at @s run function tower:bee/launch_bee/attack_bee_short {cooldown:"30",damage:"2",speed:"30"}
 
 #: attack upgrade 2
 execute as @s[tag=towers.upgrade_attack2,tag=!towers.disabled] if score @s towers_cooldown matches 2 at @s run function tower:bee/launch_bee/attack_bee_final {cooldown:"30",damage:"3",speed:"40"}
 execute as @s[tag=towers.upgrade_attack2,tag=!towers.disabled] if score @s towers_cooldown matches 1 at @s run function tower:bee/launch_bee/attack_bee_short {cooldown:"30",damage:"3",speed:"40"}
 
 #: money upgrade 1
 execute as @s[tag=towers.upgrade_money1] if score @s towers_cooldown matches 1 at @s run function tower:bee/launch_bee/money_bee {cooldown:"30",damage:"3",speed:"30",money:"1"}
 
 #: money upgrade 2
 execute as @s[tag=towers.upgrade_money2] if score @s towers_cooldown matches 1 at @s run function tower:bee/launch_bee/money_bee {cooldown:"25",damage:"3",speed:"30",money:"2"}
 execute as @s[tag=towers.upgrade_money2] at @s if entity @a[gamemode=adventure,distance=..15] run function tower:bee/money_rain
 execute as @s[tag=towers.upgrade_money2,tag=!towers.off] at @s run rotate @s ~6 ~