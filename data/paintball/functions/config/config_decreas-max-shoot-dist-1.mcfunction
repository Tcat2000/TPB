scoreboard players remove %max_shoot_dist tpb-config 1
tag @s add config
schedule function paintball:config/refresh_config 1t
function paintball:config/config_clamp-max-shoot-dist