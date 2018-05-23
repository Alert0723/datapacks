#Usage:execute as @e[...] at @s run function pack:(...)/get_target

#execute if entity @s[distance=..x] ...
#范围成功检测
execute if entity @s if block ~ ~ ~ #pack:all_blocks run say success

#范围失败检测
execute if entity @s unless block ~ ~ ~ #pack:all_blocks positioned ^ ^ ^0.1 run function pack:modules/get_target