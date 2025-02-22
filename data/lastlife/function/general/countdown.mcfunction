# comment

scoreboard players remove ticksLeft variable 1
execute if score ticksLeft variable matches -1 run scoreboard players remove minutesLeft variable 1
execute if score ticksLeft variable matches -1 run scoreboard players set ticksLeft variable 1199

execute if score ticksLeft variable matches 0 if score minutesLeft variable matches 0 run function lastlife:admin/session_end

execute if score minutesLeft variable matches ..-1 run tellraw @a ["",{"text":"ERROR: ","bold":true,"color":"red"},{"text":"There were less than 0 minutes left on the timer. How did that happen?","color":"red"},"\n",{"text":"Timer reset to 2:30.0","color":"yellow"}]
execute if score minutesLeft variable matches ..-1 run scoreboard players set ticksLeft variable 600
execute if score minutesLeft variable matches ..-1 run scoreboard players set minutesLeft variable 2
