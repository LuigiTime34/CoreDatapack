#> Warden
 #: sonic boom ticking
 execute as @s[tag=monsters.warden] at @s run function core:monsters/boss/warden/ticking
 
 execute as @s[tag=monsters.warden_disabled] at @s run function core:monsters/boss/warden/disabled_tower_ticking

#> Ravager
 execute as @s[tag=monsters.ravager] at @s run function core:monsters/boss/ravager/ticking

#> Giant
 #: shockwave ability ticking
 execute as @s[tag=monsters.giant] at @s run function core:monsters/boss/giant/ticking

 #: tower disable ticking
 execute as @s[tag=monsters.giant_disabled] at @s run function core:monsters/boss/giant/disabled_tower_ticking