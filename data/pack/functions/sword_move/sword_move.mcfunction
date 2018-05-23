execute as @a[scores={carrot_stick=1..}] run function pack:sword_move/get_target
tag @a[scores={carrot_stick=1..}] add keep

#特效时间
execute as @e[tag=sword,tag=rotated] at @s run particle minecraft:end_rod ~ ~1.8 ~ 0 0 0 0 1 normal @a
execute as @e[tag=rotated,tag=sword,scores={timer=4..}] at @s run tp @s ^ ^ ^0.8

execute as @e[tag=sword] at @s if block ^ ^ ^1.05 #pack:all_blocks run tag @s remove rotated


tag @a remove keep
scoreboard players add @e[tag=sword] timer 1
kill @e[tag=sword,scores={timer=100..}]
