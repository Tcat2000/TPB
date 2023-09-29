## setup game
scoreboard players set @a tpb-hits 0
scoreboard players set @a tpb-shot-mis 0
scoreboard players set @a tpb-shot-hit 0
scoreboard players set @a tpb-click 0
scoreboard players set @a tpb-data 0
scoreboard players set @a tpb-click_cooldown 0
scoreboard players set game.running tpb-data 1

## prevent mid-game team change
scoreboard players reset @a join_team_red
scoreboard players reset @a join_team_green
scoreboard players reset @a join_team_blue
scoreboard players reset @a join_team_cyan
scoreboard players reset @a join_team_magenta
scoreboard players reset @a join_team_yellow

## visual
title @p title {"text":"Ready? Go!","color":"green"}