scoreboard players add %death_value tpb-config 100
tag @s add config
schedule function paintball:config/refresh_config 1t
function paintball:config/config_clamp-death-value