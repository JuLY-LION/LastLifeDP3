# Survival mode trigger for players who are in adventure mode during an active session

scoreboard players set @s survival 0
scoreboard players enable @s survival

execute unless score activeSession variable matches 1 run tellraw @s {"text":"Denied: The session timer is either paused or has ended.","color":"red"}
execute unless score activeSession variable matches 1 run return 0

execute if entity @s[gamemode=spectator] run tellraw @s {"text":"Denied: Nice try loser.","color":"red"}

execute if entity @s[gamemode=survival] run tellraw @s {"text":"You're already in survival mode.","color":"white"}
execute if entity @s[gamemode=survival] run return 1

execute if entity @s[gamemode=!spectator] run gamemode survival @s
tag @s add the_scheduled_function_always_runs_as_the_Server
schedule function lastlife:trigger/survival_mode_check 4t
