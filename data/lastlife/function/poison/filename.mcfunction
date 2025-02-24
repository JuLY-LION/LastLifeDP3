execute as @a run scoreboard players operation @s poisonAmpPrev = @s poisonAmp
scoreboard players set @a poisonAmp 0
execute positioned ~ ~ ~ as @a[distance=5..] run scoreboard players add @s poisonAmp 1
execute positioned ~ ~ ~ as @a[distance=10..] run scoreboard players add @s poisonAmp 1
execute positioned ~ ~ ~ as @a[distance=20..] run scoreboard players add @s poisonAmp 1
execute positioned ~ ~ ~ as @a[distance=30..] run scoreboard players add @s poisonAmp 1
execute positioned ~ ~ ~ as @a[distance=40..] run scoreboard players add @s poisonAmp 1
execute positioned ~ ~ ~ as @a[distance=50..] run scoreboard players add @s poisonAmp 1
execute as @a run scoreboard players operation @s poisonActual = @s poisonAmp

execute as @a if score @s poisonAmp matches 0 unless score @s poisonAmpPrev matches 0 run function lastlife:poison/poi_cle
execute as @a if score @s poisonAmp matches 1 unless score @s poisonAmpPrev matches 1 run function lastlife:poison/poi_acc
execute as @a if score @s poisonAmp matches 2 unless score @s poisonAmpPrev matches 2 run function lastlife:poison/poi_mod
execute as @a if score @s poisonAmp matches 3 unless score @s poisonAmpPrev matches 3 run function lastlife:poison/poi_unh
execute as @a if score @s poisonAmp matches 4 unless score @s poisonAmpPrev matches 4 run function lastlife:poison/poi_vun
execute as @a if score @s poisonAmp matches 5 unless score @s poisonAmpPrev matches 5 run function lastlife:poison/poi_haz
execute as @a if score @s poisonAmp matches 6 unless score @s poisonAmpPrev matches 6 run function lastlife:poison/poi_ext

# execute as @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] unless @s[scores={helmetID=1}] 
# ^What was I doing here?

scoreboard players remove @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] poisonActual 1
scoreboard players remove @a[nbt={Inventory:[{id:"minecraft:wither_skeleton_skull",Slot:103b}]}] poisonActual 2
scoreboard players remove @a[nbt={Inventory:[{id:"minecraft:skeleton_skull",Slot:103b}]}] poisonActual 2
scoreboard players remove @a[nbt={Inventory:[{id:"minecraft:zombie_head",Slot:103b}]}] poisonActual 1
scoreboard players remove @a[nbt={Inventory:[{id:"minecraft:creeper_head",Slot:103b}]}] poisonActual 1

