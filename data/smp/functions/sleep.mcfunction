execute store result score @s Sleep run data get entity @s SleepTimer

execute if score @s Sleep matches 1.. run scoreboard players enable @a kickSleepTrigger
execute if score @s Sleep matches 1 run tellraw @a {"text":"","extra":[{"selector":"@s","color":"dark_green","bold":true},{"text":" is sleeping ","color":"gray"},{"text":"[Kick from bed]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kickSleepTrigger set 1"}}]}

execute if score @s Sleep matches 99 run weather clear 3600
execute if score @s Sleep matches 99 run time set day

gamerule sendCommandFeedback false
