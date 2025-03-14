# IT BEGINS!!! Run this to start the first session of Last Life.

scoreboard players set minutesLeft variable 120
scoreboard players set ticksLeft variable 200
scoreboard players set activeSession variable 1
scoreboard players enable @a survival

gamemode survival @a
worldborder set 8192 600
# Modify your worldsize ^here^ (The first number is its size in a diameter)
# DOESN'T MODIFY THE POISON RING
scoreboard players set @a lives 5
# Modify your starting life count ^here^
effect clear @a
effect give @a regeneration 60 1
effect give @a speed 60 0
effect give @a absorption 300 4
execute at @a run playsound minecraft:entity.experience_orb.pickup player @p
time set 0

function lastlife:general/refresh_colors
