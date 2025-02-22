# Debuffs creepers slightly

execute as @e[type=creeper,tag=!lesshp] run effect give @s instant_damage
execute as @e[type=creeper,tag=!lesshp] run effect give @s regeneration 6 0 true
execute as @e[type=creeper,tag=!lesshp] run data merge entity @s {Tags:["lesshp"]}