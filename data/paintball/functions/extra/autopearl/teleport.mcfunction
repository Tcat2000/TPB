##
 # teleport.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

function paintball:get_uuid

execute store result score @s uuid0 run data get entity @s data.owner[0]
execute store result score @s uuid1 run data get entity @s data.owner[1]
execute store result score @s uuid2 run data get entity @s data.owner[2]
execute store result score @s uuid3 run data get entity @s data.owner[3]

execute as @a if score @s uuid0 = @e[type=minecraft:marker,tag=tpb-autopearl,limit=1,sort=nearest] uuid0 store success entity @e[type=minecraft:marker,tag=tpb-autopearl,limit=1,sort=nearest] data.teleported byte 1 run tp @s ~ ~1 ~

execute if data entity @s {data:{teleported:1b}} run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~
execute if data entity @s {data:{teleported:1b}} run data merge entity @s {data:{loaded:0b}}
execute if data entity @s {data:{teleported:1b}} run setblock ~ ~ ~ glass


data merge entity @s {data:{discharge_last_tick:2b}}