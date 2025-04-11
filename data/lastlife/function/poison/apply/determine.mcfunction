execute at @s run playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 0.5

execute as @s[scores={poisonActual=1}] run function lastlife:poison/apply/lvlone
execute as @s[scores={poisonActual=2}] run function lastlife:poison/apply/lvltwo
execute as @s[scores={poisonActual=3}] run function lastlife:poison/apply/lvlthree
execute as @s[scores={poisonActual=4}] run function lastlife:poison/apply/lvlfour
execute as @s[scores={poisonActual=5}] run function lastlife:poison/apply/lvlfive
execute as @s[scores={poisonActual=6}] run function lastlife:poison/apply/lvlsix

scoreboard players remove @s poisonBreathe 60
