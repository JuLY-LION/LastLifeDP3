# Ensures the enchanting table area is protected

gamemode adventure @a[gamemode=survival,distance=..24]
gamemode survival @a[gamemode=adventure,distance=26..96]

execute at @e[type=tnt,distance=..24] run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16777215],fade_colors:[I;0]},{shape:"large_ball",has_twinkle:true,colors:[I;16711680]}]}}}}
kill @e[type=tnt,distance=..24]
execute at @e[type=creeper,distance=..24] run particle minecraft:cloud ~ ~1 ~ 0.25 0.5 0.25 0.01 50 normal
execute at @e[type=creeper,distance=..24] run playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 0.1 0.5
tp @e[type=creeper,distance=..24] ~ ~-48 ~
execute at @e[type=enderman,distance=..24] run summon potion ~ ~0.1 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}

execute as @e[type=phantom,distance=..24] run data merge entity @s {Fire:40}
