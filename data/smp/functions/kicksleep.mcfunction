scoreboard players set @s kickSleepTrigger 0

execute as @e[scores={Sleep=1..}] at @s run tp @s ~ ~ ~

tellraw @a {"text":"","extra":[{"selector":"@s","color":"dark_red","bold":true},{"text":" doesn't want to skip the night","color":"gray"}]}

gamerule sendCommandFeedback false
