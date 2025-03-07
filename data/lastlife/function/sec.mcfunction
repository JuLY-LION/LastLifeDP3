# Single-second tick for the datapack

schedule function lastlife:sec 20t

execute as @e[name="SafeZoneCenter",limit=1] at @s run function lastlife:poison/filename
scoreboard players add @a[scores={poisonActual=1..}] poisonBreathe 1
scoreboard players remove @a[scores={poisonActual=..0,poisonBreathe=-2..}] poisonBreathe 1
execute as @a[scores={poisonBreathe=61..}] run function lastlife:poison/punish/general