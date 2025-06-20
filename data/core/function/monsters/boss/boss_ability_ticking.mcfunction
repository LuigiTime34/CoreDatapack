#> Warden
 #: sonic boom ticking
 execute as @e[tag=defense-warden] at @s run function core:monsters/boss/warden/ticking
 
 execute as @e[tag=defense.warden_disabled] at @s run function core:monsters/boss/warden/disabled_tower_ticking

#> Ravager
 execute as @e[tag=defense-ravager] at @s run function core:monsters/boss/ravager/ticking

#> Giant
 #: shockwave ability ticking
 execute as @e[tag=defense-giant] at @s run function core:monsters/boss/giant/ticking

 #: tower disable ticking
 execute as @e[tag=defense.giant_disabled] at @s run function core:monsters/boss/giant/disabled_tower_ticking