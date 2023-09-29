##
 # charge.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

playsound minecraft:block.beacon.activate block @a ~ ~ ~
data merge entity @s {data:{loaded:1b}}
setblock ~ ~ ~ light_blue_stained_glass

execute if data entity @s {data:{discharge_last_tick:1b}} run stopsound @a[distance=0..15] block minecraft:block.beacon.activate
execute if data entity @s {data:{discharge_last_tick:1b}} run stopsound @a[distance=0..15] block minecraft:block.beacon.deactivate
execute if data entity @s {data:{discharge_last_tick:1b}} run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 1 1.5