execute on passengers if entity @s[type=minecraft:bee,tag=towers.bee] store result score @s game_money run attribute @s minecraft:attack_damage get
execute on passengers if entity @s[type=minecraft:bee,tag=towers.bee] if score @s game_money matches 1.. run function tower:bee/math/add_money with storage core:bee_damage
$execute on passengers as @s[tag=towers.bee,type=bee,tag=!towers.short_bee] run damage @n[tag=monster,tag=!monsters.baby_zombie,tag=!monsters.chicken,tag=!monsters.silverfish,tag=!monsters.endermite,tag=!monsters.spider] $(damage) minecraft:mob_attack_no_aggro by @p
execute on passengers as @s[tag=towers.bee,type=bee,tag=!towers.short_bee] as @n[tag=monster,tag=!monsters.baby_zombie,tag=!monsters.chicken,tag=!monsters.silverfish,tag=!monsters.endermite,tag=!monsters.spider] run function core:monsters/health/update
$execute on passengers as @s[tag=towers.bee,type=bee,tag=towers.short_bee] run damage @n[tag=monster,tag=!monsters.silverfish] $(damage) minecraft:mob_attack_no_aggro by @p
execute on passengers as @s[tag=towers.bee,type=bee,tag=towers.short_bee] as @n[tag=monster,tag=!monsters.silverfish] run function core:monsters/health/update
playsound minecraft:entity.bee.sting master @a ~ ~ ~ 1 1
execute on passengers run kill @s
kill @s