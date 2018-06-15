#Usage:execute as @s run function (...)



#超时重置
tag @s[scores={timer=21..}] remove qte_start
tag @s[scores={timer=21..}] remove qte_sneak
scoreboard players set @s[scores={timer=21..}] timer 0

#行为2
tag @s[scores={timer=1..20,sneak_keep=1..},tag=qte_start] add qte_sneak
scoreboard players set @s[scores={timer=1..20,sneak_keep=1..},tag=qte_start,tag=qte_sneak] timer 1
tag @s[tag=qte_start,tag=qte_sneak] remove qte_start

#行为3-完成
execute as @s[scores={timer=1..20,carrot_stick=1..},tag=qte_sneak] run say finish!

scoreboard players set @s[scores={timer=1..20,carrot_stick=1..},tag=qte_sneak] timer 0
tag @s[scores={timer=0..20,carrot_stick=1..},tag=qte_sneak] add qte_end
tag @s[scores={timer=0..20,carrot_stick=1..},tag=qte_sneak] remove qte_sneak

#文本提示
title @s[tag=qte_start,scores={timer=1..2}] actionbar {"text":"RightClick - __________ - _________"}
title @s[tag=qte_sneak,scores={timer=1..2}] actionbar {"text":"RightClick -   Sneak   - __________"}
title @s[tag=qte_sneak,tag=qte_end,scores={carrot_stick=1..}] actionbar {"text":"RightClick -   Sneak   - RightClick"}

tag @s[tag=qte_end] remove qte_end