##
 # try_charge.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

execute if block ~-1 ~ ~ minecraft:hopper[facing=east]{Items:[{id:"minecraft:ender_pearl"}]} run function paintball:extra/autopearl/charge
execute if block ~ ~ ~1 minecraft:hopper[facing=north]{Items:[{id:"minecraft:ender_pearl"}]} run function paintball:extra/autopearl/charge
execute if block ~1 ~ ~ minecraft:hopper[facing=west]{Items:[{id:"minecraft:ender_pearl"}]} run function paintball:extra/autopearl/charge
execute if block ~ ~ ~-1 minecraft:hopper[facing=south]{Items:[{id:"minecraft:ender_pearl"}]} run function paintball:extra/autopearl/charge
execute if block ~ ~1 ~ minecraft:hopper[facing=down]{Items:[{id:"minecraft:ender_pearl"}]} run function paintball:extra/autopearl/charge

execute if block ~-1 ~ ~ minecraft:hopper[facing=east]{Items:[{id:"minecraft:ender_pearl"}]} positioned ~-1 ~ ~ run function paintball:extra/autopearl/remove_1_item
execute if block ~-1 ~ ~ minecraft:hopper[facing=east]{Items:[{id:"minecraft:ender_pearl"}]} run return 1
execute if block ~ ~ ~1 minecraft:hopper[facing=north]{Items:[{id:"minecraft:ender_pearl"}]} positioned ~ ~ ~1 run function paintball:extra/autopearl/remove_1_item
execute if block ~ ~ ~1 minecraft:hopper[facing=north]{Items:[{id:"minecraft:ender_pearl"}]} run return 1
execute if block ~1 ~ ~ minecraft:hopper[facing=west]{Items:[{id:"minecraft:ender_pearl"}]} positioned ~1 ~ ~ run function paintball:extra/autopearl/remove_1_item
execute if block ~1 ~ ~ minecraft:hopper[facing=west]{Items:[{id:"minecraft:ender_pearl"}]} run return 1
execute if block ~ ~ ~-1 minecraft:hopper[facing=south]{Items:[{id:"minecraft:ender_pearl"}]} positioned ~ ~ ~-1 run function paintball:extra/autopearl/remove_1_item
execute if block ~ ~ ~-1 minecraft:hopper[facing=south]{Items:[{id:"minecraft:ender_pearl"}]} run return 1
execute if block ~ ~1 ~ minecraft:hopper[facing=down]{Items:[{id:"minecraft:ender_pearl"}]} positioned ~ ~1 ~ run function paintball:extra/autopearl/remove_1_item
execute if block ~ ~1 ~ minecraft:hopper[facing=down]{Items:[{id:"minecraft:ender_pearl"}]} run return 1
return 0