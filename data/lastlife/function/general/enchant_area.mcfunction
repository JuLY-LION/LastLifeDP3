# Ensures the enchanting table area is protected

gamemode adventure @a[gamemode=survival,distance=..20]
execute if score activeSession variable matches 1 run gamemode survival @a[gamemode=adventure,distance=22..120]

execute at @e[type=tnt,distance=..16] run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16777215],FadeColors:[I;0]},{Type:1,Flicker:1b,Colors:[I;16711680]}]}}}}
kill @e[type=tnt,distance=..16]
execute at @e[type=creeper,distance=..16] run particle minecraft:cloud ~ ~1 ~ 0.25 0.5 0.25 0.01 50 normal
tp @e[type=creeper,distance=..16] ~ ~-32 ~
execute at @e[type=enderman,distance=..16] run summon potion ~ ~0.1 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}

execute as @e[type=phantom,distance=..16] run data merge entity @s {Fire:40}
