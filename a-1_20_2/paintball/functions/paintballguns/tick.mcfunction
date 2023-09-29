## operation handdling
execute as @e[scores={tpb-click_cooldown=1..}] run scoreboard players remove @s tpb-click_cooldown 1
execute as @e[type=minecraft:marker,nbt={Tags:["posChecker"]},sort=nearest] at @s run function paintball:paintballguns/particle with storage paintball:player particle
kill @e[type=minecraft:marker,nbt={Tags:["posChecker"]},sort=nearest]

## shot handdling
execute as @e[scores={tpb-click=1..}] if score @s tpb-click_cooldown matches 0 at @s run function paintball:paintballguns/shoot
execute as @e[scores={tpb-click=1..}] run scoreboard players reset @s tpb-click
execute as @a run title @s actionbar ["",{"text":"Your hits: "},{"score":{"name":"@s","objective":"tpb-hits"},"color":"dark_red"},{"text":" Shots Hit: "},{"score":{"name":"@s","objective":"tpb-shot-hit"},"color":"dark_green"},{"text":" Shots Missed: "},{"score":{"name":"@s","objective":"tpb-shot-mis"},"color":"dark_red"}]