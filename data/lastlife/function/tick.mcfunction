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
execute at @a[scores={hasDied=1..}] run function lastlife:general/protect_items_spawn
scoreboard players set @a[scores={hasDied=1..}] punishmentID 0

scoreboard players set @a[scores={hasDied=1..}] hasDied 0

execute as @a[scores={refresh=1..}] run function lastlife:general/refresh_colors
execute as @a[scores={give_life=1..}] run function lastlife:general/life_item_summon
execute as @a[scores={mjbp=1..}] run function lastlife:general/life_item_use
# execute as @a[nbt={Inventory:[{id:"minecraft:blaze_powder",Count:1b,Slot:-106b}]}] run function lastlife:bc/oh_blaze_powder
execute as @a[scores={lives=1..4,aliveTime=10}] run function lastlife:general/respawn_kit
execute at @e[tag=safeitem,limit=1,sort=random] run particle composter ~ ~0.6 ~ 0.1 0.1 0.1 0 1 normal @a
execute as @a[scores={admin=1..}] run function lastlife:trigger/admin_panel
execute as @a[scores={survival=1..}] run function lastlife:trigger/survival_mode
execute as @a[scores={recipes=1..}] run function lastlife:trigger/knowledge

execute if score activeSession variable matches 1 run function lastlife:timer/do_time
execute as @e[tag=protectitems] at @s run function lastlife:general/protect_items
execute as @e[name=EnchantArea,limit=1,sort=nearest] at @s run function lastlife:general/enchant_area


function lastlife:mobs/creepers
# execute at JuLYLION run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 1 normal @a
effect give @a[scores={poisonAmp=1..}] poison 1 0 true
execute as @a[scores={poisonBreathe=-1}] run function lastlife:poison/apply/lvlzero

execute as @a[scores={poisonAmp=1..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s
execute as @a[scores={poisonAmp=3..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s
execute as @a[scores={poisonAmp=5..}] at @s anchored eyes run particle minecraft:falling_dust{block_state:{Name:"green_concrete"}} ^ ^ ^3 8 8 8 0 10 normal @s

function compressediron:hub_ciron

effect give @a[scores={hasBeenDmgd=1..,punishmentID=8}] minecraft:levitation 2 0 false
scoreboard players set @a[scores={hasBeenDmgd=1..}] hasBeenDmgd 0
