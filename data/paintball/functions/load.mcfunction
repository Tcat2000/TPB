scoreboard objectives add tpb-hits dummy
scoreboard objectives add tpb-shot-mis dummy
scoreboard objectives add tpb-shot-hit dummy
scoreboard objectives add tpb-data dummy
scoreboard objectives add tpb-data1 dummy
scoreboard objectives add tpb-data2 dummy
scoreboard objectives add tpb-data3 dummy
scoreboard objectives add tpb-config dummy
scoreboard objectives add tpb-click_cooldown dummy
scoreboard objectives add tpb-deaths deathCount
scoreboard objectives add tpb-click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add join_team_red trigger
scoreboard objectives add join_team_green trigger
scoreboard objectives add join_team_blue trigger
scoreboard objectives add join_team_cyan trigger
scoreboard objectives add join_team_magenta trigger
scoreboard objectives add join_team_yellow trigger
scoreboard objectives add uuid0 dummy
scoreboard objectives add uuid1 dummy
scoreboard objectives add uuid2 dummy
scoreboard objectives add uuid3 dummy
team add tpb-red {"text":"Team Red"}
team modify tpb-red color red
team add tpb-green {"text":"Team Green"}
team modify tpb-green color green
team add tpb-blue {"text":"Team Blue"}
team modify tpb-blue color blue
team add tpb-cyan {"text":"Team Cyan"}
team modify tpb-cyan color dark_aqua
team add tpb-magenta {"text":"Team Magenta"}
team modify tpb-magenta color light_purple
team add tpb-yellow {"text":"Team Yellow"}
team modify tpb-yellow color gold

## if no configs set, set default configs
execute unless score %max_shoot_dist tpb-config matches -1.. run function paintball:default_config