# Handles compressed iron functions

execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]}] run scoreboard players set @s wearingChainChestP 0
scoreboard players add @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]}] wearingChainChestP 1

execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Slot:101b}]}] run scoreboard players set @s wearingChainLeggings 0
scoreboard players add @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Slot:101b}]}] wearingChainLeggings 1

execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_boots",Slot:100b}]}] run scoreboard players set @s wearingChainBoots 0
scoreboard players add @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Slot:100b}]}] wearingChainBoots 1

execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] run scoreboard players set @s wearingChainHelmet 0
scoreboard players add @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] wearingChainHelmet 1

execute as @a[scores={wearingChainChestP=1}] run function compressediron:execute/do_chestplate
execute as @a[scores={wearingChainLeggings=1}] run function compressediron:execute/do_leggings
execute as @a[scores={wearingChainBoots=1}] run function compressediron:execute/do_boots
execute as @a[scores={wearingChainHelmet=1}] run function compressediron:execute/do_helmet
