#> UI Check For Items

#: upgrade items
execute if items entity @s container.* *[minecraft:custom_data~{tower_upgrade:1b}] run function tower:ui/items {slot:"container.*"}
execute if items entity @s weapon.* *[minecraft:custom_data~{tower_upgrade:1b}] run function tower:ui/items {slot:"weapon.*"}
execute if items entity @s player.cursor *[minecraft:custom_data~{tower_upgrade:1b}] run function tower:ui/items {slot:"player.cursor"}

#: stat return
execute if items entity @s container.* *[minecraft:custom_data~{tower_stat:1b}] run function tower:ui/stat_return {slot:"container.*"}
execute if items entity @s weapon.* *[minecraft:custom_data~{tower_stat:1b}] run function tower:ui/stat_return {slot:"weapon.*"}
execute if items entity @s player.cursor *[minecraft:custom_data~{tower_stat:1b}] run function tower:ui/stat_return {slot:"player.cursor"}
