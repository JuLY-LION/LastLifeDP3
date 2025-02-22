# comment

execute as @e[type=item,distance=..8,tag=!safeitem] run data merge entity @s {Age:-30000,PickupDelay:100,Invulnerable:1b,Tags:["safeitem"],Item:{}}
tp @s ~ ~ ~ ~3 ~0
scoreboard players add @s protItemAge 1

particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.01 3 normal @a
particle smoke ~ ~ ~ 0 -0.2 0 1 0
particle wax_off ~ ~-2 ~ 3 3 3 5 2 normal @a
particle sculk_soul ~ ~ ~ 7 7 7 0.01 1 normal @a

execute if entity @s[scores={protItemAge=6000}] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.5 200 normal @a
execute if entity @s[scores={protItemAge=6000}] run tellraw @a[distance=..16] {"text":"The item protector has expired.","color":"dark_aqua"}
execute if entity @s[scores={protItemAge=6000}] run playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 0.5 2
kill @s[scores={protItemAge=6000..}]
