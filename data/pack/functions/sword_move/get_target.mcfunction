#Usage:execute as @a[...] at @s run function pack:(...)/get_target

#范围成功检测
execute if entity @s[distance=..100] if block ~ ~ ~ #pack:all_blocks run function pack:sword_move/click

#范围失败检测
execute if entity @s[distance=..100] unless block ~ ~ ~ #pack:all_blocks positioned ^ ^ ^0.1 run function pack:sword_move/get_target