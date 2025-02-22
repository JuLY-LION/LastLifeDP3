# comment

summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["protectitems"],DisabledSlots:63,ArmorItems:[{id:"minecraft:iron_boots",Count:9b,tag:{RepairCost:1000,Unbreakable:0b,Damage:1000,Enchantments:[{id:"minecraft:thorns",lvl:6s},{id:"minecraft:binding_curse",lvl:1s}]}},{},{},{}]}
execute as @e[type=item,distance=..8] run data merge entity @s {Age:-30000,Invulnerable:1b,Tags:["safeitem"],Item:{}}
