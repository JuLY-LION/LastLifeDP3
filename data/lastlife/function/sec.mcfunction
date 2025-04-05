# Single-second tick for the datapack

schedule function lastlife:sec 20t

execute in minecraft:overworld as @e[name="SafeZoneCenter",limit=1,sort=nearest] at @s run function lastlife:poison/filename
execute in minecraft:the_nether as @e[name="SafeZoneCenter",limit=1,sort=nearest] at @s run function lastlife:poison/filename
# execute in minecraft:the_end as @e[name="SafeZoneCenter",limit=1,sort=nearest] at @s run function lastlife:poison/filename
scoreboard players add @a[scores={poisonActual=1..}] poisonBreathe 1
scoreboard players remove @a[scores={poisonActual=..0,poisonBreathe=-2..}] poisonBreathe 1
execute as @a[scores={poisonBreathe=61..}] run function lastlife:poison/punish/general

execute if score activeSession variable matches 0 if score minutesLeft variable matches 0 run effect give @a[scores={lives=1..},gamemode=survival] minecraft:mining_fatigue 2 0 true

effect give @a[scores={punishmentID=2}] mining_fatigue 11
effect give @a[scores={punishmentID=4}] nausea 11
execute as @a[scores={punishmentID=5}] at @s if entity @p[distance=1..4] run effect give @s blindness 3
effect give @a[scores={punishmentID=7}] weakness 11
effect give @a[scores={punishmentID=11}] unluck 11 3
effect give @a[scores={punishmentID=11}] glowing 11
execute as @a[scores={punishmentID=12}] at @s unless entity @p[distance=1..16] run effect give @s darkness 3
effect give @a[scores={punishmentID=13}] wind_charged 2 0 true
effect give @a[scores={punishmentID=13}] weaving 2 0 true
effect give @a[scores={punishmentID=13}] oozing 2 0 true
effect give @a[scores={punishmentID=13}] infested 2
