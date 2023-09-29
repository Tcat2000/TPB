## forming the crafter
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] at @s align xyz positioned ~ ~ ~ unless entity @e[type=minecraft:item_display,distance=0..0.01] if block ~ ~-1 ~ minecraft:crafting_table run function paintball:crafting/form
execute if score %debug_mode tpb-config matches 1 as @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] at @s align xyz positioned ~ ~ ~ run particle minecraft:composter ~ ~ ~ 0 0 0 1 1

## destroying the crafter
execute as @e[type=minecraft:item_display,tag=TPB-XL_crafter] at @s unless block ~ ~-1 ~ minecraft:barrel run function paintball:crafting/remove

## changing the model
execute as @e[type=minecraft:item_display,nbt={item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:443480}}}] at @s if block ~ ~-1 ~ minecraft:barrel[open=true] run data merge entity @s {item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:443481}}}
execute as @e[type=minecraft:item_display,nbt={item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:443481}}}] at @s if block ~ ~-1 ~ minecraft:barrel[open=false] run data merge entity @s {item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:443480}}}

## working the GUIs
execute as @e run clear @s minecraft:barrier{GUIitem:1b}
execute as @e[type=minecraft:item_display,nbt={item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:443480}}}] at @s run function paintball:crafting/gui_tick
execute as @e[type=minecraft:item_display,nbt={item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:443481}}}] at @s run function paintball:crafting/gui_tick