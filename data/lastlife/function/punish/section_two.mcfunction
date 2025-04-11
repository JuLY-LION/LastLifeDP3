# Second section of the punishments available

execute as @a[scores={punishmentID=9}] at @s if block ~ ~-0.125 ~ minecraft:netherrack run effect give @s wither 1 1
execute as @a[scores={punishmentID=9}] at @s if block ~ ~-0.125 ~ minecraft:soul_sand run effect give @s wither 1 1
execute as @a[scores={punishmentID=9}] at @s if block ~ ~-0.125 ~ minecraft:soul_soil run effect give @s wither 1 1
# ID 10 is needed in tick.mcfunction
effect give @a[scores={punishmentID=11}] unluck 11 3
effect give @a[scores={punishmentID=11}] glowing 11
effect give @a[scores={punishmentID=11},x=-1000000,y=0,z=-1000000,dx=2000000,dy=32,dz=2000000] bad_omen 6000 0 true
execute as @a[scores={punishmentID=12}] at @s unless entity @p[distance=1..16] run effect give @s darkness 3
effect give @a[scores={punishmentID=13}] wind_charged 2 0 true
effect give @a[scores={punishmentID=13}] weaving 2 0 true
effect give @a[scores={punishmentID=13}] oozing 2 0 true
effect give @a[scores={punishmentID=13}] infested 2
