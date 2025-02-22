# Checks if the player using the trigger was booted back into adventure mode

execute as @p[tag=the_scheduled_function_always_runs_as_the_Server] if entity @s[gamemode=adventure] run tellraw @s {"text":"Move away from the enchanting area and try again.","color":"red"}
execute as @p[tag=the_scheduled_function_always_runs_as_the_Server] if entity @s[gamemode=survival] run tellraw @s {"text":"You're now in survival mode.","color":"white"}
# execute if entity @s run say success
tag @p[tag=the_scheduled_function_always_runs_as_the_Server] remove the_scheduled_function_always_runs_as_the_Server
