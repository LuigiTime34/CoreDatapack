# End of path
execute if block ~ -59 ~ minecraft:black_concrete run function core:monsters/reached_end
# Get initial speed
execute as @e[tag=defense.new_mob] run function core:monsters/movement/set_initial_speed
# Move
function core:monsters/movement/determine_speed
# Fallback in case they go out of bounds :[
execute if block ~ -61 ~ minecraft:black_glazed_terracotta run tp @s @n[tag=defense-intersection]