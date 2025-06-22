# Summons a marker linked to this enderman

# Assign a unique ID if the enderman doesn't have one
execute unless score @s util_entity_id matches 1.. run function core:monsters/abilities/enderman/assign_entity_id

# Create marker
summon minecraft:marker ~ ~ ~ {Tags:["monsters.enderman_marker","monsters.new_marker"]}

# Copy the ID to link them
scoreboard players operation @e[tag=monsters.new_marker,limit=1] util_marker_id = @s util_entity_id

# Remove the new marker tag
tag @e[tag=monsters.new_marker] remove new_marker

# Mark this enderman as having a marker
tag @s add monsters.marked_enderman