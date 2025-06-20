 #: base bee tower
 execute as @s[tag=!upgrade1,tag=!upgrade_attack1,tag=!upgrade_attack2,tag=!upgrade_money1,tag=!upgrade_money2] if score @s towers_cooldown matches 1 at @s run function core:towers/bee/launch_bee {cooldown:"40",damage:"2",speed:20}
 
 #: bee tower upgrade
 execute as @s[tag=upgrade1] if score @s towers_cooldown matches 1 at @s run function core:towers/bee/launch_bee {cooldown:"35",damage:"3",speed:"25"}
 
 #: attack upgrade 1
 execute as @s[tag=upgrade_attack1,tag=!defense.disabled] if score @s towers_cooldown matches 2 at @s run function core:towers/bee/launch_attack_bee {damage:"2",speed:"30"}
 execute as @s[tag=upgrade_attack1,tag=!defense.disabled] if score @s towers_cooldown matches 1 at @s run function core:towers/bee/launch_attack_bee_short {cooldown:"30",damage:"2",speed:"30"}
 
 #: attack upgrade 2
 execute as @s[tag=upgrade_attack2,tag=!defense.disabled] if score @s towers_cooldown matches 2 at @s run function core:towers/bee/launch_attack_bee_final {cooldown:"30",damage:"3",speed:"40"}
 execute as @s[tag=upgrade_attack2,tag=!defense.disabled] if score @s towers_cooldown matches 1 at @s run function core:towers/bee/launch_attack_bee_short {cooldown:"30",damage:"3",speed:"40"}
 
 #: money upgrade 1
 execute as @s[tag=upgrade_money1] if score @s towers_cooldown matches 1 at @s run function core:towers/bee/launch_money_bee {cooldown:"30",damage:"3",speed:"30",money:"1"}
 
 #: money upgrade 2
 execute as @s[tag=upgrade_money2] if score @s towers_cooldown matches 1 at @s run function core:towers/bee/launch_money_bee {cooldown:"25",damage:"3",speed:"30",money:"2"}
 execute as @s[tag=upgrade_money2] at @s if entity @p[gamemode=adventure,distance=..15] run function core:towers/bee/money_rain
 execute as @s[tag=upgrade_money2,tag=!defense.off] at @s run rotate @s ~6 ~