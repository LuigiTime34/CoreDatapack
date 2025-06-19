execute on passengers if entity @s[type=minecraft:bee,tag=defense.bee] store result score @s defense.money run attribute @s minecraft:attack_damage get
execute on passengers if entity @s[type=minecraft:bee,tag=defense.bee] if score @s defense.money matches 1.. run function core:defense/towers/bee/add_money with storage core:defense.bee_damage
$execute on passengers as @s[tag=defense.bee,type=bee,tag=!defense.short_bee] run damage @n[tag=defense-monster,tag=!defense-baby_zombie,tag=!defense-chicken,tag=!defense-silverfish,tag=!defense-endermite,tag=!defense-spider,tag=!defense-zoglin] $(damage) core:main by @p
$execute on passengers as @s[tag=defense.bee,type=bee,tag=defense.short_bee] run damage @n[tag=defense-monster,tag=!defense-silverfish] $(damage) core:main by @p
playsound minecraft:entity.bee.sting master @a ~ ~ ~ 1 1
execute on passengers run kill @s
kill @s