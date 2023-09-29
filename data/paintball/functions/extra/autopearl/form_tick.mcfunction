##
 # form_tick.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

execute as @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}}] at @s if block ~ ~-1 ~ minecraft:glass align xyz positioned ~.5 ~-0.5 ~.5 unless entity @e[type=minecraft:item_display,distance=0..0.1] run function paintball:extra/autopearl/form