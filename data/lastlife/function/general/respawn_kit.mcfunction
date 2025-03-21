# Give items and effects

execute as @s if entity @s[nbt={Inventory:[{Slot:-106b}]}] run give @s shield
execute as @s unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with shield

execute as @s if entity @s[nbt={Inventory:[{Slot:8b}]}] run give @s bread 4
execute as @s unless entity @s[nbt={Inventory:[{Slot:8b}]}] run item replace entity @s hotbar.8 with bread 4

execute as @s if entity @s[nbt={Inventory:[{Slot:7b}]}] run give @s torch
execute as @s unless entity @s[nbt={Inventory:[{Slot:7b}]}] run item replace entity @s hotbar.7 with torch

execute as @s unless entity @s[nbt={Inventory:[{Slot:103}]}] run item replace entity @s armor.head with golden_helmet[trim={material:"minecraft:lapis",pattern:"minecraft:silence"},attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:3,operation:"add_value",slot:"head"},{id:"armor_toughness",type:"armor_toughness",amount:2,operation:"add_value",slot:"head"}],show_in_tooltip:false},custom_name='{"bold":true,"italic":false,"text":"Respawn Helmet"}',death_protection={death_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:glowing",amplifier:0,duration:240}]}]},enchantments={levels:{"minecraft:blast_protection":6,"minecraft:fire_protection":6,"minecraft:projectile_protection":6,"minecraft:aqua_affinity":1,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}},repair_cost=100,lore=['"Protects like diamond,"','"yet shatters like gold."']] 1

effect give @s saturation 20 0 true
effect give @s regeneration 5 1
effect give @s absorption 20
effect give @s fire_resistance 300 0 true
effect give @s water_breathing 300 0 true

scoreboard players set @s poisonBreathe -30
