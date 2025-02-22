# comment

function lastlife:timer/countdown
execute unless score addMinutes variable matches 0 run function lastlife:timer/time_offset

execute if score minutesLeft variable matches 60 if score ticksLeft variable matches 0 run tellraw @a {"text":"1 hour remaining","color":"yellow"}
execute if score minutesLeft variable matches 60 if score ticksLeft variable matches 0 as @a at @s run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 1 2
execute if score minutesLeft variable matches 45 if score ticksLeft variable matches 0 run tellraw @a {"text":"45 minutes remaining","color":"yellow"}
execute if score minutesLeft variable matches 30 if score ticksLeft variable matches 0 run tellraw @a {"text":"30 minutes remaining","color":"yellow"}
execute if score minutesLeft variable matches 15 if score ticksLeft variable matches 0 run tellraw @a {"text":"15 minutes remaining","color":"yellow"}
execute if score minutesLeft variable matches 10 if score ticksLeft variable matches 0 run tellraw @a {"text":"10 minutes remaining","color":"yellow"}
execute if score minutesLeft variable matches 5 if score ticksLeft variable matches 0 run tellraw @a {"text":"5 minutes remaining","color":"yellow"}
execute if score minutesLeft variable matches 2 if score ticksLeft variable matches 0 run tellraw @a {"text":"2 minute warning!","color":"yellow","bold":true}
execute if score minutesLeft variable matches 2 if score ticksLeft variable matches 0 as @a at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 0.5 2
execute if score minutesLeft variable matches 1 if score ticksLeft variable matches 1195 as @a at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 0.75 2
execute if score minutesLeft variable matches 1 if score ticksLeft variable matches 1190 as @a at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 2

# execute if score minutesLeft variable matches 1 if score ticksLeft variable matches 0 as @a at @s run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 1 2
execute if score minutesLeft variable matches 0 if score ticksLeft variable matches 300 as @a at @s run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.5 2
execute if score minutesLeft variable matches 0 if score ticksLeft variable matches 240 as @a at @s run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.5 2
execute if score minutesLeft variable matches 0 if score ticksLeft variable matches 180 as @a at @s run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.5 2
execute if score minutesLeft variable matches 0 if score ticksLeft variable matches 120 as @a at @s run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.5 2
execute if score minutesLeft variable matches 0 if score ticksLeft variable matches 60 as @a at @s run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.5 2
