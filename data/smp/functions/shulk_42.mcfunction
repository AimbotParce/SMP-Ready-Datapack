execute unless block ~ ~ ~ air run scoreboard players set @s shulk_hit 1
execute if score @s shulk_hit matches 1 run loot spawn ~ ~ ~ loot smp:shulkers
execute unless score @s shulk_hit matches 1 positioned ^ ^ ^0.1 run function smp:shulk_43