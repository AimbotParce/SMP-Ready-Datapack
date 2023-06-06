execute as @a[scores={killplayer=1}] at @s run function smp:headgiver
execute as @a[scores={deathtrigger=1}] run function smp:deathannouncer
execute as @a run function smp:sleep
execute as @a if score @s kickSleepTrigger matches 1.. run function smp:kicksleep
