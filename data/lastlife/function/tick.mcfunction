# Main function for the datapack

schedule function lastlife:tick 1t
function lastlife:mobs/creepers
execute at JuLYLION run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 1 normal @a
effect give @a[scores={poisonAmp=1..}] poison 1 0 true
execute as @a[scores={poisonBreathe=-1}] run function lastlife:poison/punish/lvlzero

execute as @a[scores={poisonAmp=1..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s
execute as @a[scores={poisonAmp=3..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s
execute as @a[scores={poisonAmp=5..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s
