# Does as the name implies. Stored in the timer folder as it's only meant to be executed by the schedule command.
 
execute if score activeSession variable matches 0 run gamerule doMobSpawning false
tellraw @a [{"text":"Mob spawning has been disabled until the start of the next session.","color":"yellow"}]
