##
 # is_powered.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

execute if block ~1 ~ ~ minecraft:redstone_wire unless block ~1 ~ ~ minecraft:redstone_wire[west=none] unless block ~1 ~ ~ minecraft:redstone_wire[power=0] run return 1
execute if block ~-1 ~ ~ minecraft:redstone_wire unless block ~-1 ~ ~ minecraft:redstone_wire[east=none] unless block ~-1 ~ ~ minecraft:redstone_wire[power=0] run return 1
execute if block ~ ~ ~1 minecraft:redstone_wire unless block ~ ~ ~1 minecraft:redstone_wire[south=none] unless block ~ ~ ~1 minecraft:redstone_wire[power=0] run return 1
execute if block ~ ~ ~-1 minecraft:redstone_wire unless block ~ ~ ~-1 minecraft:redstone_wire[north=none] unless block ~ ~ ~-1 minecraft:redstone_wire[power=0] run return 1
execute if block ~ ~1 ~ minecraft:redstone_wire unless block ~ ~1 ~ minecraft:redstone_wire[power=0] run return 1

execute if block ~1 ~ ~ minecraft:repeater[powered=true,facing=east] run return 1
execute if block ~-1 ~ ~ minecraft:repeater[powered=true,facing=west] run return 1
execute if block ~ ~ ~1 minecraft:repeater[powered=true,facing=south] run return 1
execute if block ~ ~ ~-1 minecraft:repeater[powered=true,facing=north] run return 1

execute if block ~1 ~ ~ minecraft:comparator[powered=true,facing=east] run return 1
execute if block ~-1 ~ ~ minecraft:comparator[powered=true,facing=west] run return 1
execute if block ~ ~ ~1 minecraft:comparator[powered=true,facing=south] run return 1
execute if block ~ ~ ~-1 minecraft:comparator[powered=true,facing=north] run return 1

execute if block ~1 ~ ~ minecraft:redstone_torch[lit=true] run return 1
execute if block ~-1 ~ ~ minecraft:redstone_torch[lit=true] run return 1
execute if block ~ ~ ~1 minecraft:redstone_torch[lit=true] run return 1
execute if block ~ ~ ~-1 minecraft:redstone_torch[lit=true] run return 1
execute if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] run return 1

execute if block ~1 ~ ~ minecraft:lever[powered=true] run return 1
execute if block ~-1 ~ ~ minecraft:lever[powered=true] run return 1
execute if block ~ ~ ~1 minecraft:lever[powered=true] run return 1
execute if block ~ ~ ~-1 minecraft:lever[powered=true] run return 1
execute if block ~ ~-1 ~ minecraft:lever[powered=true] run return 1
execute if block ~ ~1 ~ minecraft:lever[powered=true] run return 1

return 0