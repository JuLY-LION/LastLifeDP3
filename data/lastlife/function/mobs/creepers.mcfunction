# Creepers give a subtle warning when approaching players

execute as @e[type=creeper,tag=!warned] at @s if entity @p[distance=..8] run playsound minecraft:block.grass.step hostile @a ~ ~ ~ 0.5 1
execute as @e[type=creeper,tag=!warned] at @s if entity @p[distance=..8] run data merge entity @s {Tags:["warned"]}
