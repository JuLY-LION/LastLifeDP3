# Is executed when addMinutes has a value other than 0

execute if score addMinutes variable matches ..-1 run scoreboard players operation subtractMinutesDisplay variable = addMinutes variable
execute if score addMinutes variable matches ..-1 run scoreboard players operation subtractMinutesDisplay variable *= #sub1 variable
execute if score addMinutes variable matches ..-1 run title @a actionbar ["",{"text":"An admin has reduced the session by ","color":"yellow"},{"score":{"name":"subtractMinutesDisplay","objective":"variable"},"bold":true,"color":"red"},{"text":" minutes","color":"yellow"}]
scoreboard players reset subtractMinutesDisplay

execute unless score addMinutes variable matches 0 run scoreboard players operation minutesLeft variable += addMinutes variable
execute unless score addMinutes variable matches 0 run scoreboard players set addMinutes variable 0
