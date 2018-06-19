# tp_RotY * ScaleRadius_Math = 360

scoreboard players add @s ScaleRadius_Math 1

scoreboard players operation @s ScaleRadius_Temp = @s ScaleRadius

execute as @s at @s run function pack:modules/scaling_circle/radius_change

execute as @s at @s run tp @s ~ ~ ~ ~15 ~

execute if entity @s[scores={ScaleRadius_Math=..23}] run function pack:modules/scaling_circle/revolver

execute if entity @s[scores={ScaleRadius_Math=24..}] run scoreboard players set @s ScaleRadius_Math 0
