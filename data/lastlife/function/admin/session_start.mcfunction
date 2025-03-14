# For when sessions start

scoreboard players set minutesLeft variable 120
scoreboard players set activeSession variable 1
scoreboard players enable @a survival
gamerule doMobSpawning true
schedule clear lastlife:timer/disable_mob_spawning

execute as @a[team=darkGreenName] run tellraw @s ["",{"text":"Session start! ","bold":true,"color":"green"},{"text":"Watch your back! You have ","color":"yellow"},{"score":{"name":"@s","objective":"lives"},"bold":true,"color":"dark_green"},{"text":" lives","bold":true,"color":"dark_green"},{"text":" remaining.","color":"yellow"}]
execute as @a[team=greenName] run tellraw @s ["",{"text":"Session start! ","bold":true,"color":"green"},{"text":"Watch your back! You have ","color":"yellow"},{"score":{"name":"@s","objective":"lives"},"bold":true,"color":"green"},{"text":" lives","bold":true,"color":"green"},{"text":" remaining.","color":"yellow"}]
execute as @a[team=yellowName] run tellraw @s ["",{"text":"Session start! ","bold":true,"color":"green"},{"text":"Watch your back! You have ","color":"yellow"},{"score":{"name":"@s","objective":"lives"},"bold":true,"color":"yellow"},{"text":" lives","bold":true,"color":"yellow"},{"text":" remaining.","color":"yellow"}]
execute as @a[team=redName] run tellraw @s ["",{"text":"Session start! ","bold":true,"color":"green"},{"text":"Show them no mercy! You have only ","color":"yellow"},{"score":{"name":"@s","objective":"lives"},"bold":true,"color":"red"},{"text":" life","bold":true,"color":"red"},{"text":" remaining.","color":"yellow"}]
execute as @a[team=defeated] run tellraw @s ["",{"text":"Session start! ","bold":true,"color":"green"},{"text":"Get some popcorn! Your lives may be gone","color":"yellow"},{"text":", but spectating should still be entertaining.","color":"yellow"}]
execute as @a[team=] run tellraw @s ["",{"text":"Session start! ","bold":true,"color":"green"},{"text":"Are you spectating or is this an error? You seem to have ","color":"yellow"},{"text":"NULL lives","bold":true,"color":"white"},{"text":"!","color":"yellow"}]

gamemode survival @a[gamemode=adventure]
effect give @a[gamemode=survival] regeneration 5 1
effect give @a[gamemode=survival] absorption 120 0

execute unless entity @a[team=redName] run tellraw @a[team=!,gamemode=survival] ["",{"text":"You are not a red player.","color":"yellow"},{"text":" In fact, none are present yet.","color":"yellow"}]
execute if entity @a[team=redName] run tellraw @a[team=!redName,gamemode=survival] ["",{"text":"You are not a red player.","color":"green"},{"text":" The red players are currently ","color":"yellow"},{"selector":"@a[team=redName]"},{"text":". You should stay clear of them!","color":"yellow"}]

execute as @a[team=redName] at @s unless entity @a[team=redTeam,distance=1..] run tellraw @s ["",{"text":"You are a red player.","color":"red"},{"text":" There are no other red players right now, but killing a yellow name would change that.","color":"yellow"}]
execute as @a[team=redName] at @s if entity @a[team=redTeam,distance=1..] run tellraw @s ["",{"text":"You are a red player.","color":"red"},{"text":" The other red players are currently ","color":"yellow"},{"selector":"@a[team=redName,distance=2..]"},{"text":". While they may be fellow reds, they could still turn against you!","color":"yellow"}]

execute at @a[team=!defeated] run playsound minecraft:block.beacon.power_select block @p ~ ~20 ~ 1 0.5 0.5