#子弹追踪曲线修正模块
#Usage: execute as @e[tag=bullet,...] at @s run function pack:(...)/bullet_tracking

#Scoreboard
scoreboard objectives add Bullet_RotX dummy
scoreboard objectives add Bullet_RotY dummy

scoreboard objectives add ToTarget_RotX dummy
scoreboard objectives add ToTarget_RotY dummy

scoreboard objectives add Math dummy

#Get_Data
execute store result score @s Bullet_RotX run data get entity @s Rotation[0] 1000000
execute store result score @s Bullet_RotY run data get entity @s Rotation[1] 1000000

#Get_ToTarget_Data
execute as @s at @s anchored feet run tp @s ~ ~ ~ facing entity @e[type=!player,tag=!bullet,distance=..20,limit=1] feet
#瞄准位置(eyes/feet)          ↑                                                                                     ↑

execute store result score @s ToTarget_RotX run data get entity @s Rotation[0] 1000000
execute store result score @s ToTarget_RotY run data get entity @s Rotation[1] 1000000

execute store result entity @s Rotation[0] float 0.000001 run scoreboard players get @s Bullet_RotX
execute store result entity @s Rotation[1] float 0.000001 run scoreboard players get @s Bullet_RotY

#-----水平偏移-----
#Offset_Calculation
scoreboard players operation @s Math = @s ToTarget_RotX
scoreboard players operation @s Math -= @s Bullet_RotX

#                                     偏移探测范围↓             偏移角度参数↓
execute as @s at @s if score @s Math matches -90000000..0 run tp @s ~ ~ ~ ~-2 ~
execute as @s at @s if score @s Math matches 0..90000000 run tp @s ~ ~ ~ ~2 ~

#-----竖直偏移-----
#Offset_Calculation
scoreboard players operation @s Math = @s ToTarget_RotY
scoreboard players operation @s Math -= @s Bullet_RotY

#                                     偏移探测范围↓             偏移角度参数↓
execute as @s at @s if score @s Math matches -90000000..0 run tp @s ~ ~ ~ ~ ~-2
execute as @s at @s if score @s Math matches 0..90000000 run tp @s ~ ~ ~ ~ ~2

#位移&偏转角度-推荐配置:
#位移 0.5 #角度 1.7
#位移 0.7 #角度 2
