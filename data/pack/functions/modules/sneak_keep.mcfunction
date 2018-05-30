#潜行持续时间计时
#Usage:function pack:modules/sneak_keep

scoreboard players add @a[scores={sneak_time=1..}] sneak_keep 1
scoreboard players set @a[scores={sneak_time=0}] sneak_keep 0
scoreboard players set @a[scores={sneak_time=1..}] sneak_time 0 
