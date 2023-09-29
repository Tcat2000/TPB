execute if score %debug_mode tpb-config matches 1 run say forming
execute align xyz run summon item_display ~ ~ ~ {Tags:["TPB-XL_crafter"],item_display:"none",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-0.5f,0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:443480}}}
execute align xyz positioned ~ ~-1 ~ run setblock ~ ~ ~ minecraft:air destroy
execute align xyz positioned ~ ~-1 ~ run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crafting_table",Count:1b}}]
execute align xyz positioned ~ ~-1 ~ run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"text":"Please Install Resource Pack!"}'} destroy
kill @s[type=item]