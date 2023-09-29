##
 # remove_1_item.mcfunction
 # 
 #
 # Created by Tcathebluecreper
##

data merge entity @s {data:{found_item:1b}}

execute store success entity @s data.found_item byte 1 store result block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:0b}].Count float 0.999 run data get block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:0b}].Count 1
execute if data entity @s {data:{found_item:1b}} run return 1
execute store success entity @s data.found_item byte 1 store result block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:1b}].Count float 0.999 run data get block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:1b}].Count 1
execute if data entity @s {data:{found_item:1b}} run return 1
execute store success entity @s data.found_item byte 1 store result block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:2b}].Count float 0.999 run data get block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:2b}].Count 1
execute if data entity @s {data:{found_item:1b}} run return 1
execute store success entity @s data.found_item byte 1 store result block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:3b}].Count float 0.999 run data get block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:3b}].Count 1
execute if data entity @s {data:{found_item:1b}} run return 1
execute store success entity @s data.found_item byte 1 store result block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:4b}].Count float 0.999 run data get block ~ ~ ~ Items[{id:"minecraft:ender_pearl",Slot:4b}].Count 1
execute if data entity @s {data:{found_item:1b}} run return 1

return 0