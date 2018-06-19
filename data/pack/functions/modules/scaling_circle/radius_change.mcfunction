execute if entity @s if entity @s[scores={ScaleRadius_Temp=1}] run particle minecraft:witch ~ ~ ~ 0 0 0 0 0 normal @a

execute if entity @s unless entity @s[scores={ScaleRadius_Temp=0}] run scoreboard players remove @s ScaleRadius_Temp 1

execute as @s unless entity @s[scores={ScaleRadius_Temp=0}] positioned ^ ^ ^0.25 run function pack:modules/scaling_circle/radius_change
