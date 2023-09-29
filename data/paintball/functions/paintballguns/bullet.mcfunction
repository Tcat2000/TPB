scoreboard players add @s tpb-data 1
#particle dust_color_transition 1 0 0 1 0.5 0.5 0.5 ~ ~ ~ 0 0 0 0 1 normal
summon minecraft:marker ~ ~ ~ {Tags:["posChecker"]}
#execute if entity @s[tag=this] run say has tag
#execute if entity @s[tag=!this] run say missing tag
data modify entity @s particle set from storage paintball:player particle
#data modify storage paintball:data Pos set from entity @e[type=minecraft:marker,limit=1,sort=nearest] Pos
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,tag=!this] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0,type=minecraft:player,tag=!this] run return 3
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,tag=!this] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0,type=!minecraft:player,type=!minecraft:marker,tag=!this] run return 2
execute unless block ~ ~ ~ air run return 1
kill @e[type=minecraft:marker,nbt={Tags:["posChecker"]},sort=nearest,limit=1]
execute if score @s tpb-data < %max_shoot_dist tpb-config positioned ^ ^ ^0.33 run function paintball:paintballguns/bullet
