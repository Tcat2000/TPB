##
 # remove.mcfunction
 # 
 #
 # Created by .
##

loot spawn ~ ~ ~ loot paintball:autopearl
execute if data entity @s {data:{loaded:1b}} run loot spawn ~ ~ ~ loot paintball:ender_pearl
kill @e[type=minecraft:item_display,limit=1,sort=nearest,distance=0..1]
kill @s[type=minecraft:marker]