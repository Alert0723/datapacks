#Usage:execute as @e[...] at @s run function pack:module/get_target

#范围成功检测
execute if entity @s[distance=..20] if block ~ ~ ~ #pack:all_blocks run say 1

#范围失败检测
execute if entity @s[distance=..20] unless block ~ ~ ~ stone positioned ^ ^ ^0.1 run function pack:module/get_target