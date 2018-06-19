#Usage:execute as @e[type=area_effect_cloud,...] at @s run function pack:(...)/scaling_circle
#scoreboard players set @e[type=area_effect_cloud,...] ScaleRadius 10

#Scoreboard
#初始半径
scoreboard objectives add ScaleRadius dummy
#半径缓存
scoreboard objectives add ScaleRadius_Temp dummy
#递归缓存
scoreboard objectives add ScaleRadius_Math dummy

scoreboard objectives add timer dummy


execute as @s at @s run function pack:modules/scaling_circle/revolver

scoreboard players add @s timer 1
execute as @s[scores={ScaleRadius=0..,timer=2..}] run scoreboard players remove @s ScaleRadius 1
scoreboard players set @s[scores={timer=2..}] timer 0
