scoreboard objectives add deathtrigger deathCount
scoreboard objectives add Deaths deathCount {"text":"Deaths","color":"red"}
scoreboard objectives setdisplay belowName Deaths

scoreboard objectives add killplayer playerKillCount

scoreboard objectives add Sleep dummy

scoreboard objectives add Health health {"text":"Health","color":"green"}
scoreboard objectives setdisplay list Health

scoreboard objectives add kickSleepTrigger trigger

tellraw @a ["",{"text":"Loaded "},{"text":"SMP-Ready","color":"blue"},{"text":" data pack by "},{"text":"AimbotParce","color":"light_purple"}]
