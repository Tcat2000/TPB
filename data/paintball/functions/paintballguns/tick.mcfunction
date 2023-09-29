## operation handdling
execute as @e[scores={tpb-click_cooldown=1..}] run scoreboard players remove @s tpb-click_cooldown 1
execute as @e[type=minecraft:marker,nbt={Tags:["posChecker"]},sort=nearest] at @s run function paintball:paintballguns/particle
kill @e[type=minecraft:marker,nbt={Tags:["posChecker"]},sort=nearest]

## shot handdling
execute as @e[scores={tpb-click=1..}] unless score @s tpb-click_cooldown matches 1.. at @s run function paintball:paintballguns/shoot
execute as @e[scores={tpb-click=1..}] run scoreboard players reset @s tpb-click
execute as @a if score @s tpb-click_cooldown > %shot_cooldown tpb-config store result score @s tpb-click_cooldown run scoreboard players get %shot_cooldown tpb-config
execute as @a run title @s actionbar ["",{"text":"Your hits: "},{"score":{"name":"@s","objective":"tpb-hits"},"color":"dark_red"},{"text":" Shots Hit: "},{"score":{"name":"@s","objective":"tpb-shot-hit"},"color":"dark_green"},{"text":" Shots Missed: "},{"score":{"name":"@s","objective":"tpb-shot-mis"},"color":"dark_red"}]

execute as @a[scores={tpb-deaths=1..}] run scoreboard players operation @s tpb-hits += %death_value tpb-config
execute as @a[scores={tpb-deaths=1..}] run scoreboard players remove @s tpb-deaths 1

execute as @e[tag=this] run tag @s remove this