execute if entity @s[distance=..20] if block ~ ~ ~ #magic:all_blocks run say 1
execute if entity @s[distance=..20] unless block ~ ~ ~ stone positioned ^ ^ ^0.1 run function magic:get_target