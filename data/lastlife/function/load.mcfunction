say lastlife:load ran successfully
effect give JuLYLION night_vision 999999 0 true

scoreboard objectives add lives dummy
scoreboard objectives add hasDied deathCount
scoreboard objectives add deaths deathCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add finalKills teamkill.red
scoreboard objectives add aliveTime minecraft.custom:minecraft.time_since_death
scoreboard objectives add variable dummy "Dummy Variables"
scoreboard players set #sub1 variable -1
scoreboard objectives add admin trigger
scoreboard objectives add mjbp minecraft.picked_up:minecraft.mojang_banner_pattern

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
