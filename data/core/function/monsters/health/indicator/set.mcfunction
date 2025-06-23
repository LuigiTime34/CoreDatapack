#> Health Indicator Set

#: set display
item modify entity @s contents core:display_indicator
data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
data modify entity @s Motion set from storage defense:monsters indicator.motion
data modify entity @s CustomNameVisible set value true
tag @s remove new