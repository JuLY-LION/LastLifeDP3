# comment

scoreboard players set @e[tag=protectitems,distance=..8] protItemAge 5999
summon marker ~ ~1.25 ~ {NoGravity:1b,Invulnerable:1b,Tags:["protectitems"]}
execute as @e[type=item,distance=..8] run data merge entity @s {Age:-30000,Invulnerable:1b,Tags:["safeitem"],Item:{}}
