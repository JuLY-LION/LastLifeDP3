# comment

execute if score activeSession variable matches 0 run tellraw @s {"text":"The timer is already paused or has ended","color":"gold"}

execute if score activeSession variable matches 1 run title @a actionbar {"text":"The session timer was paused by an admin","color":"yellow"}
scoreboard players set activeSession variable 0
