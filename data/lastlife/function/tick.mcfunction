# Main function for the datapack

schedule function lastlife:tick 1t

gamemode spectator @a[team=defeated,gamemode=!spectator]
scoreboard players remove @a[scores={hasDied=1..}] lives 1
team leave @a[scores={hasDied=1..}]
team join darkGreenName @a[scores={hasDied=1..,lives=4..}]
team join greenName @a[scores={hasDied=1..,lives=3}]
team join yellowName @a[scores={hasDied=1..,lives=2}]
team join redName @a[scores={hasDied=1..,lives=1}]
execute at @a[scores={hasDied=1..,lives=0}] run function lastlife:general/final_kill
execute as @a[scores={hasDied=1..,lives=1}] at @a[gamemode=survival] run playsound minecraft:entity.guardian.hurt player @p ~ ~20 ~ 0.5 0.5 0.5
# execute at @a[scores={hasDied=1..}] run function lastlife:general/protect_items_spawn


function lastlife:mobs/creepers
execute at JuLYLION run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 1 normal @a
effect give @a[scores={poisonAmp=1..}] poison 1 0 true
execute as @a[scores={poisonBreathe=-1}] run function lastlife:poison/punish/lvlzero

execute as @a[scores={poisonAmp=1..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s
execute as @a[scores={poisonAmp=3..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s
execute as @a[scores={poisonAmp=5..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s
