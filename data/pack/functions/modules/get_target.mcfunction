#光标方向目标获取
#Usage:execute as @e[...] at @s anchored eyes run function pack:(...)/get_target

#execute if entity @s[distance=..x] ...
#范围成功检测
execute if entity @s[distance=..10] if block ~ ~ ~ #pack:all_blocks run say success

#范围失败检测
execute if entity @s[distance=..10] unless block ~ ~ ~ #pack:all_blocks positioned ^ ^ ^0.1 run function pack:modules/get_target
execute if entity @s[distance=..10] unless block ~ ~ ~ #pack:all_blocks positioned ^ ^ ^0.1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 normal @a
