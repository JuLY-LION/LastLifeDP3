# comment

execute if score activeSession variable matches 1 run tellraw @s {"text":"The timer is already active","color":"gold"}

execute if score activeSession variable matches 0 run title @a actionbar {"text":"The session timer has resumed","color":"yellow"}
scoreboard players set activeSession variable 1
