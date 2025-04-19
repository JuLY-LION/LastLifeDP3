# First section of the punishments available

# effect give @a[scores={punishmentID=1}] slowness 11
effect give @a[scores={punishmentID=2}] mining_fatigue 11
effect give @a[scores={punishmentID=3,health=6}] instant_damage
effect give @a[scores={punishmentID=3,health=20}] instant_damage
effect give @a[scores={punishmentID=4}] nausea 11
execute as @a[scores={punishmentID=5}] at @s if entity @p[distance=1..4] run effect give @s blindness 3
execute in minecraft:overworld at @e[name="SafeZoneCenter",limit=1,sort=nearest] as @a[scores={punishmentID=6}] run effect give @s[distance=100..10000] hunger 2 2
effect give @a[scores={punishmentID=7}] weakness 11
# ID 8 is needed in tick.mcfunction
