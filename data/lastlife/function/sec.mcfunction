# Single-second tick for the datapack

schedule function lastlife:sec 20t

execute in minecraft:overworld as @e[name="SafeZoneCenter",limit=1,sort=nearest] at @s run function lastlife:poison/filename
execute in minecraft:the_nether as @e[name="SafeZoneCenter",limit=1,sort=nearest] at @s run function lastlife:poison/filename
# execute in minecraft:the_end as @e[name="SafeZoneCenter",limit=1,sort=nearest] at @s run function lastlife:poison/filename
scoreboard players add @a[scores={poisonActual=1..}] poisonBreathe 1
scoreboard players remove @a[scores={poisonActual=..0,poisonBreathe=-2..}] poisonBreathe 1
execute as @a[scores={poisonBreathe=61..}] run function lastlife:poison/apply/determine

execute if score activeSession variable matches 0 if score minutesLeft variable matches 0 run effect give @a[scores={lives=1..},gamemode=survival] minecraft:mining_fatigue 2 0 true

execute if entity @a[scores={punishmentID=1..7}] run function lastlife:punish/section_one
execute if entity @a[scores={punishmentID=9..13}] run function lastlife:punish/section_two
