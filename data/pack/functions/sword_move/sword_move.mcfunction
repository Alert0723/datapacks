execute as @a[scores={carrot_stick=1..}] run function pack:sword_move/get_target

#特效时间
execute as @e[tag=sword,tag=moving] at @s run particle minecraft:end_rod ~ ~1.8 ~ 0 0 0 0 1 normal @a
execute as @e[tag=sword,tag=moving,scores={timer=4..}] at @s run tp @s ^ ^ ^0.8

execute as @e[tag=sword,tag=moving,scores={timer=4..}] at @s rotated ~ 0 if block ^ ^1.7 ^1.02 #pack:all_blocks run tag @s add tpTarget
execute as @e[tag=sword,tag=moving,scores={timer=4..}] at @s rotated ~ 0 if block ^ ^1.7 ^1.02 #pack:all_blocks run tag @a add keep
execute as @e[tag=sword,tag=moving,scores={timer=4..}] at @s rotated ~ 0 if block ^ ^1.7 ^1.02 #pack:all_blocks run tag @s remove moving

tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] add keep

execute as @a[tag=keep] if entity @e[tag=sword,tag=!tpTarget,tag=!moving] run effect give @s minecraft:levitation 1 255 true
effect clear @a[tag=!keep] minecraft:levitation
execute as @a[tag=!keep] run kill @e[tag=sword]

execute as @e[tag=sword,tag=tpTarget] at @s positioned ^ ^0.3 ^-0.2 run tp @p ~ ~ ~
tag @e[tag=sword,tag=tpTarget] remove tpTarget

tag @a remove keep
scoreboard players add @e[tag=sword,tag=moving] timer 1
kill @e[tag=sword,tag=moving,scores={timer=100..}]
