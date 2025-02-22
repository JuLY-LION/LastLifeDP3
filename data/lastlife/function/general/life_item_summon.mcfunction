# Failed to create item due to lack of lives

effect give @s[scores={lives=..2}] blindness 3 0 true
effect give @s[scores={lives=..2}] weakness 7
execute at @s[scores={lives=..2}] run playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 0.75

tellraw @s[scores={lives=..2}] ["",{"text":"You are too weak to create a ","color":"red"},{"text":"Soul Contract","color":"light_purple"},{"text":". Perhaps if you had more lives...","color":"red"}]

# Successfully created the item

damage @s[scores={lives=3..}] 2 minecraft:bad_respawn_point
execute at @s[scores={lives=3..}] run particle glow ~ ~1 ~ 1 1 1 0.01 40 normal @a
execute at @s[scores={lives=3..}] run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1 0.5

execute as @s[scores={lives=3..}] at @s anchored eyes positioned ^ ^ ^3 run summon item ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Soul Contract","color":"light_purple","italic":false}',Item:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Soul Contract","italic":false}'},Enchantments:[{}]}}}
execute as @s[scores={lives=3..}] at @s anchored eyes positioned ^ ^ ^3 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.05 20
tellraw @s[scores={lives=3..}] ["",{"text":"You feel your energy drain as a ","color":"green"},{"text":"Soul Contract","color":"light_purple"},{"text":" is created right in front of your eyes.","color":"green"}]
scoreboard players remove @s[scores={lives=3..}] lives 1

# Reset function for next use

scoreboard players set @s give_life 0
scoreboard players enable @s give_life
trigger refresh
