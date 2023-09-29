#tellraw @p {"score":{"name":"@s","objective":"tpb-click_cooldown"}}
scoreboard players set @s tpb-data 0
tag @s add this

## dont change these values in pre 1.20.2, it dose not work
data remove storage paintball:data particle2
execute if entity @s[team=tpb-red] run data modify storage paintball:data particle set value {"particle":"minecraft:dust 1 0 0 2"}
execute if entity @s[team=tpb-green] run data modify storage paintball:data particle set value {"particle":"minecraft:dust 0.3 1 0.3 2"}
execute if entity @s[team=tpb-blue] run data modify storage paintball:data particle set value {"particle":"minecraft:dust 0.3 0.3 1 2"}
execute if entity @s[team=tpb-cyan] run data modify storage paintball:data particle set value {"particle":"minecraft:dust 0 1 1 2"}
execute if entity @s[team=tpb-magenta] run data modify storage paintball:data particle set value {"particle":"minecraft:dust 1 0.3 1 2"}
execute if entity @s[team=tpb-yellow] run data modify storage paintball:data particle set value {"particle":"minecraft:dust 1 1 0.3 2"}
execute unless score %disable_extra_particles tpb-config matches 1.. if entity @s[nbt={UUID:[I;1144295131,619465372,-1323432872,1537239358]}] run data modify storage paintball:data particle2 set value {"particle":"minecraft:damage_indicator"}

playsound minecraft:paintball.rifle player @a ~ ~ ~ 1 1
execute positioned ~ ~1.5 ~ store result score @s tpb-data1 run function paintball:paintballguns/bullet
execute if score %debug_mode tpb-config matches 1 run tellraw @p [{"score":{"name":"@s","objective":"tpb-data1"}}]

## hit player
execute if score @s tpb-data1 matches 3 run scoreboard players add @s tpb-shot-hit 1
## hit non player 
execute if score @s tpb-data1 matches 2 run scoreboard players add @s tpb-shot-mis 1
## hit block 
execute if score @s tpb-data1 matches 1 run scoreboard players add @s tpb-shot-mis 1
## hit nothing
execute if score @s tpb-data1 matches 0 run scoreboard players add @s tpb-shot-mis 1 

execute store result score @s tpb-click_cooldown run scoreboard players get %shot_cooldown tpb-config