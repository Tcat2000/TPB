loot spawn ~ ~ ~ loot minecraft:blocks/crafting_table
loot spawn ~ ~ ~ loot minecraft:blocks/iron_block
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=0..1.2]
kill @s[type=item_display]