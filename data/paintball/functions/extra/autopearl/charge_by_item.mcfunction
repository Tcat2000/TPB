##
 # charge_by_item.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

function paintball:extra/autopearl/charge
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=0..1.5] store result entity @s Item.Count float 0.999 run data get entity @s Item.Count 1