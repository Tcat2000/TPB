scoreboard players set game.running tpb-data 0
title @a title {"text":"Time!","color":"dark_red"}
tellraw @a {"text":"                                Final Scores!"}
tellraw @a {"text":"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"}
execute as @a run tellraw @a [{"selector":"@s"},{"text":": "},{"score":{"name":"@s","objective":"tpb-hits"},"color":"red"},{"text":" hits taken, and ","color":"white"},{"score":{"name":"@s","objective":"tpb-shot-hit"},"color":"red"},{"text":" hits given, with ","color":"white"},{"score":{"name":"@s","objective":"tpb-shot-mis"},"color":"red"},{"text":" hits missed!","color":"white"}]
tellraw @a {"text":"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"}
