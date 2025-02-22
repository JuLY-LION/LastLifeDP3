# Give items and effects

execute as @s if entity @s[nbt={Inventory:[{Slot:-106b}]}] run give @s shield
execute as @s unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with shield

execute as @s if entity @s[nbt={Inventory:[{Slot:8b}]}] run give @s bread 4
execute as @s unless entity @s[nbt={Inventory:[{Slot:8b}]}] run item replace entity @s hotbar.8 with bread 4

execute as @s if entity @s[nbt={Inventory:[{Slot:7b}]}] run give @s torch
execute as @s unless entity @s[nbt={Inventory:[{Slot:7b}]}] run item replace entity @s hotbar.7 with torch

effect give @s saturation 20 0 true
effect give @s regeneration 5 1
effect give @s absorption 20
effect give @s fire_resistance 20
