execute as @e[type=minecraft:player,scores={join_team_red=1..}] run team join tpb-red @s
execute as @e[type=minecraft:player,scores={join_team_green=1..}] run team join tpb-green @s
execute as @e[type=minecraft:player,scores={join_team_blue=1..}] run team join tpb-blue @s
execute as @e[type=minecraft:player,scores={join_team_cyan=1..}] run team join tpb-cyan @s
execute as @e[type=minecraft:player,scores={join_team_magenta=1..}] run team join tpb-magenta @s
execute as @e[type=minecraft:player,scores={join_team_yellow=1..}] run team join tpb-yellow @s

execute as @a[scores={join_team_red=1..}] unless score game.running tpb-data matches 1.. run scoreboard players set @s join_team_red 0
execute as @a[scores={join_team_green=1..}] unless score game.running tpb-data matches 1.. run scoreboard players set @s join_team_green 0
execute as @a[scores={join_team_blue=1..}] unless score game.running tpb-data matches 1.. run scoreboard players set @s join_team_blue 0
execute as @a[scores={join_team_cyan=1..}] unless score game.running tpb-data matches 1.. run scoreboard players set @s join_team_cyan 0
execute as @a[scores={join_team_magenta=1..}] unless score game.running tpb-data matches 1.. run scoreboard players set @s join_team_magenta 0
execute as @a[scores={join_team_yellow=1..}] unless score game.running tpb-data matches 1.. run scoreboard players set @s join_team_yellow 0

execute as @a[team=!tpb-red] unless score game.running tpb-data matches 1.. run scoreboard players enable @s join_team_red
execute as @a[team=!tpb-green] unless score game.running tpb-data matches 1.. run scoreboard players enable @s join_team_green
execute as @a[team=!tpb-blue] unless score game.running tpb-data matches 1.. run scoreboard players enable @s join_team_blue
execute as @a[team=!tpb-cyan] unless score game.running tpb-data matches 1.. run scoreboard players enable @s join_team_cyan
execute as @a[team=!tpb-magenta] unless score game.running tpb-data matches 1.. run scoreboard players enable @s join_team_magenta
execute as @a[team=!tpb-yellow] unless score game.running tpb-data matches 1.. run scoreboard players enable @s join_team_yellow