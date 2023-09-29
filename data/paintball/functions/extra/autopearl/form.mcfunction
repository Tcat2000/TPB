##
 # form.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:ender_eye",Count:1},billboard:"vertical"}
summon minecraft:marker ~ ~ ~ {Tags:["tpb-autopearl"],data:{loaded:0b}}
execute store result entity @s Item.Count float 0.999 run data get entity @s Item.Count 1
execute as @e[type=minecraft:marker,tag=tpb-autopearl] at @s run data modify entity @s data.owner set from entity @p UUID