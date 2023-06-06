execute as @a at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:"{\"text\":\"AfkMark\"}"}
execute as @a at @s run scoreboard players operation @s AfkTime += @e[type=armor_stand,name=AfkMark,distance=..0.001,limit=1] AfkCount
kill @e[type=armor_stand,name=AfkMark,scores={AfkCount=1..}]
scoreboard players add @e[type=armor_stand,name=AfkMark] AfkCount 1
scoreboard players add @a AfkReference 1
execute as @a if score @s AfkReference > @s AfkTime run function smp:reloadafk
execute as @a if score @s AfkTime >= Global AfkLimit run team join AFK
execute as @a if score @s AfkTime = Global AfkLimit run tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":" is now ","color":"gray"},{"text":"AFK","color":"dark_red"}]}
execute as @a[team=AFK] if score @s AfkTime matches 1 run team modify AFK color white
execute as @a[team=AFK] if score @s AfkTime matches 1 run tellraw @a {"text":"","extra":[{"selector":"@s","color":"dark_green"},{"text":" is no longer ","color":"gray"},{"text":"AFK","color":"dark_green"}]}
execute as @a[team=AFK] if score @s AfkTime matches 1 run team modify AFK color red
execute as @a if score @s AfkTime matches 1 run team leave @s