say lastlife:load ran successfully : )
# effect give JuLYLION night_vision 999999 0 true

scoreboard objectives add lives dummy
scoreboard objectives add hasDied deathCount
scoreboard objectives add deaths deathCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add finalKills teamkill.red
scoreboard objectives add aliveTime minecraft.custom:minecraft.time_since_death
scoreboard objectives add protItemAge dummy
scoreboard objectives add variable dummy "Dummy Variables"
scoreboard objectives add mjbp minecraft.picked_up:minecraft.mojang_banner_pattern

scoreboard objectives add give_life trigger
scoreboard objectives add admin trigger
scoreboard objectives add refresh trigger
scoreboard players enable @a refresh
scoreboard players enable @a give_life

scoreboard players set #sub1 variable -1
scoreboard players set #debug variable 0
execute if score #debug variable matches 1.. run say Debug mode is currently enabled

team add darkGreenName
team modify darkGreenName color dark_green
team add greenName
team modify greenName color green
team add yellowName
team modify yellowName color yellow
team add redName
team modify redName color red
team modify redName seeFriendlyInvisibles false
team add defeated
team modify defeated prefix {"text":"✖ ","color":"red"}
team modify defeated displayName {"text":"Defeated","italic":true}

scoreboard objectives add poisonAmp dummy "Poison Amplifier"
scoreboard objectives add poisonAmpPrev dummy
scoreboard objectives add poisonActual dummy
scoreboard objectives add poisonBreathe dummy
scoreboard objectives add goodMask dummy
scoreboard objectives add punishmentID dummy
scoreboard objectives add wearingChainHelmet dummy
scoreboard objectives add wearingChainChestP dummy
scoreboard objectives add wearingChainLeggings dummy
scoreboard objectives add wearingChainBoots dummy
scoreboard objectives add hasBeenDmgd minecraft.custom:minecraft.damage_taken

kill @e[name="SafeZoneCenter"]
summon marker 50.5 72.0 50.5 {NoGravity:1b,CustomNameVisible:1b,CustomName:'"SafeZoneCenter"'}
execute in minecraft:the_nether run summon marker 25.5 64.0 25.5 {NoGravity:1b,CustomNameVisible:1b,CustomName:'"SafeZoneCenter"'}
# execute in minecraft:the_end run summon marker 75.5 64.0 75.5 {NoGravity:1b,CustomNameVisible:1b,CustomName:'"SafeZoneCenter"'}
kill @e[name="EnchantArea"]
summon marker 0.5 72.0 0.5 {NoGravity:1b,CustomNameVisible:1b,CustomName:'"EnchantArea"'}

