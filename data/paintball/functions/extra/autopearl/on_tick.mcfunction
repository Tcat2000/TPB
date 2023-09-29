##
 # on_tick.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

execute as @e[type=minecraft:marker,tag=tpb-autopearl] at @s if data entity @s {data:{loaded:1b}} unless block ~ ~ ~ minecraft:light_blue_stained_glass run function paintball:extra/autopearl/remove
execute as @e[type=minecraft:marker,tag=tpb-autopearl] at @s if data entity @s {data:{loaded:0b}} unless block ~ ~ ~ minecraft:glass run function paintball:extra/autopearl/remove
execute if data entity @s {data:{loaded:0b}} if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=0..1.5] run function paintball:extra/autopearl/charge_by_item
execute if data entity @s {data:{loaded:0b}} run function paintball:extra/autopearl/try_charge

data modify entity @s data.was_powered set from entity @s data.is_powered
execute store result entity @s data.is_powered byte 1 run function paintball:is_powered

execute if data entity @s {data:{loaded:1b,was_powered:0b,is_powered:1b}} run function paintball:extra/autopearl/teleport

execute if data entity @s {data:{discharge_last_tick:1b}} run data merge entity @s {data:{discharge_last_tick:0b}}
execute if data entity @s {data:{discharge_last_tick:2b}} run data merge entity @s {data:{discharge_last_tick:1b}}