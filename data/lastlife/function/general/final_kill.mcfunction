# Runs when a player loses their final life, broadcasting it to the server and placing them in the defeated team.

execute at @p[scores={hasDied=1..,lives=0}] run summon minecraft:lightning_bolt ~ 56 ~
tellraw @a ["",{"text":"FINAL KILL!","bold":true,"color":"aqua"}," ",{"selector":"@p[scores={hasDied=1..,lives=0}]","color":"red"}," has been eliminated!"]
execute at @a[gamemode=survival] run playsound minecraft:entity.guardian.death player @p ~ ~ ~ 1 0.5
team join defeated @p[scores={hasDied=1..,lives=0}]