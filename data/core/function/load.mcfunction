# Initialize scoreboards
scoreboard objectives add vdvcasttemp dummy

#> Monster stats
#: basic monster attributes and behaviors
 scoreboard objectives add monster_abilities dummy
 scoreboard objectives add monster_speed dummy
 scoreboard objectives add monster_slowness dummy
 scoreboard objectives add monster_damage dummy
  scoreboard players set bogged.heal monster_damage 20
  scoreboard players set silverfish.heal monster_damage 30
 scoreboard objectives add monster_distance dummy
 scoreboard objectives add monster_health dummy
 scoreboard objectives add monster_speed_loop dummy

#: specific monster types
 scoreboard objectives add monster_ravager_speed dummy
 scoreboard objectives add monster_bogged_health dummy
 scoreboard objectives add monster_enderman_marker dummy
  scoreboard players add marker.id monster_enderman_marker 0

#> Tower scoreboards
#: general tower functionality
 scoreboard objectives add towers_cost dummy
 scoreboard objectives add tower_placement dummy
 scoreboard objectives add towers_cooldown dummy
 scoreboard objectives add tower_range_indicator dummy
 scoreboard objectives add tower_range_particle dummy

#: bee towers
 scoreboard objectives add towers_bee_damage dummy
 scoreboard objectives add towers_bee_cooldown dummy
 scoreboard objectives add towers_bee_util dummy
 scoreboard objectives add towers_bee_gold_animation dummy

#: storm towers
 scoreboard objectives add towers_storm dummy
 scoreboard objectives add towers_storm_freeze_timer dummy
 scoreboard objectives add towers_storm_freeze_power dummy

#: panda towers
 scoreboard objectives add towers_panda_boo_delay dummy
 scoreboard objectives add towers_panda_boo_damage dummy
 scoreboard objectives add towers_panda_bomb_range dummy

#> Game systems
#: core game mechanics
 scoreboard objectives add game_money dummy
 scoreboard objectives add game_wave dummy
 scoreboard objectives add game_display dummy
 scoreboard objectives add game_rotation dummy
 scoreboard objectives add game_progress dummy
 scoreboard objectives add game_blockers dummy
 scoreboard objectives add game_music dummy

#> Utility Scoreboards
#: system tracking and player data
 scoreboard objectives add util_entity_id dummy
 scoreboard objectives add util_marker_id dummy
 scoreboard objectives add util_uuid dummy
 scoreboard objectives add left minecraft.custom:leave_game

# Initialize teams
team add defense_enemies
team add green
team add defense_player

# Initialize bossbar(s)
bossbar add mobs_left ["",{text:"WAVE ",bold:1b,color:"aqua",type:"text"},{score:{name:"wave.level",objective:"game_wave"},bold:1b,color:"aqua",type:"score"}]
bossbar add core:boss ""

# Tell Dev reload message
tellraw LuigiTime34 {text:"Datapack Has Loaded Succesfully!",color:"green",bold:1b,type:"text"}
playsound minecraft:block.note_block.xylophone master LuigiTime34 ~ ~ ~ 100000000000