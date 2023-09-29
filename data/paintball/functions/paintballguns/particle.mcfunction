execute if data storage paintball:data {particle:{particle:"minecraft:dust 1 0 0 2"}} as @a unless entity @s[dx=0] run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0.2 0.2 0.2 1 100 force @s
execute if data storage paintball:data {particle:{particle:"minecraft:dust 0.3 1 0.3 2"}} as @a unless entity @s[dx=0] run particle minecraft:dust 0.3 1 0.3 2 ~ ~ ~ 0.2 0.2 0.2 1 100 force @s
execute if data storage paintball:data {particle:{particle:"minecraft:dust 0.3 0.3 1 2"}} as @a unless entity @s[dx=0] run particle minecraft:dust 0.3 0.3 1 2 ~ ~ ~ 0.2 0.2 0.2 1 100 force @s
execute if data storage paintball:data {particle:{particle:"minecraft:dust 0 1 1 2"}} as @a unless entity @s[dx=0] run particle minecraft:dust 0 1 1 2 ~ ~ ~ 0.2 0.2 0.2 1 100 force @s
execute if data storage paintball:data {particle:{particle:"minecraft:dust 1 0.3 1 2"}} as @a unless entity @s[dx=0] run particle minecraft:dust 1 0.3 1 2 ~ ~ ~ 0.2 0.2 0.2 1 100 force @s
execute if data storage paintball:data {particle:{particle:"minecraft:dust 1 1 0.3 2"}} as @a unless entity @s[dx=0] run particle minecraft:dust 1 1 0.3 2 ~ ~ ~ 0.2 0.2 0.2 1 100 force @s
execute if data storage paintball:data {particle2:{particle:"minecraft:damage_indicator"}} as @a unless entity @s[dx=0] run particle minecraft:damage_indicator ~ ~ ~ 0.2 0.2 0.2 1 100 force @s

#execute if data storage paintball:data {particle:{particle:"minecraft:damage_indicator"}} positioned ~-0.15 ~-0.15 ~-0.15 as @a[dx=0] positioned ~-0.8 ~-0.8 ~-0.8 unless entity @a run particle minecraft:damage_indicator ~ ~ ~ 0.2 0.2 0.2 1 100 force @s
