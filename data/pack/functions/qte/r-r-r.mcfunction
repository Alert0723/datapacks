#Usage:execute as @s run function (...)

#文本提示
title @s[tag=qte_start,scores={timer=1..2}] actionbar {"text":"RightClick - _________ - _________"}
title @s[tag=qte_right,scores={carrot_stick=1..,timer=1..2}] actionbar {"text":"RightClick - RightClick - __________"}
title @s[tag=qte_right,tag=qte_end,scores={carrot_stick=1..}] actionbar {"text":"RightClick - RightClick - RightClick"}

tag @s[tag=qte_end] remove qte_end

#超时重置
tag @s[scores={timer=21..}] remove qte_start
tag @s[scores={timer=21..}] remove qte_right
scoreboard players set @s[scores={timer=21..}] timer 0

#行为2
tag @s[scores={timer=1..20,carrot_stick=1..},tag=qte_start] add qte_right
scoreboard players set @s[scores={timer=1..20,carrot_stick=1..},tag=qte_start,tag=qte_right] timer 1
tag @s[tag=qte_start,tag=qte_right] remove qte_start

#行为3-完成
execute as @s[scores={timer=1..20,carrot_stick=1..},tag=qte_right] run say finish!

scoreboard players set @s[scores={timer=1..20,carrot_stick=1..},tag=qte_right] timer 0
tag @s[scores={timer=0..20,carrot_stick=1..},tag=qte_right] add qte_end
tag @s[scores={timer=0..20,carrot_stick=1..},tag=qte_right] remove qte_right
