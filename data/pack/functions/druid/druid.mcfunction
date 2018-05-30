#德鲁伊

execute as @a[scores={sneak_keep=10..}] at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 2 10 normal @a
execute as @e[tag=bullet] at @s run particle minecraft:witch ~ ~1 ~ 0 0 0 100 2 normal @a

#蓄力
execute as @a[scores={sneak_keep=15}] at @s positioned ~1 ~1 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["marker"]}

execute as @a[scores={sneak_keep=15}] at @s positioned ~1 ~0.5 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["bullet","bullet1","round"]}
execute as @a[scores={sneak_keep=35}] at @s positioned ~1 ~0.5 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["bullet","bullet2","round"]}
execute as @a[scores={sneak_keep=55}] at @s positioned ~1 ~0.5 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["bullet","bullet3","round"]}

execute as @e[tag=round] run data merge entity @s {Duration:200}

#环绕
execute as @a[scores={sneak_keep=15..}] at @s run tp @e[tag=marker,limit=1] ~ ~ ~
execute as @e[tag=marker] at @s run tp @s ~ ~ ~ ~5 ~
execute as @a[scores={sneak_keep=15..}] at @s run execute as @e[tag=marker,limit=1] at @s positioned ^ ^-0.2 ^1.2 run tp @e[tag=bullet1,tag=round] ~ ~ ~
execute as @a[scores={sneak_keep=35..}] at @s run execute as @e[tag=marker,limit=1] at @s positioned ^1 ^-0.2 ^-1 run tp @e[tag=bullet2,tag=round] ~ ~ ~
execute as @a[scores={sneak_keep=55..}] at @s run execute as @e[tag=marker,limit=1] at @s positioned ^-1 ^-0.2 ^-1 run tp @e[tag=bullet3,tag=round] ~ ~ ~

#发射
execute as @a[scores={carrot_stick=1..}] at @s run tp @e[tag=marker,limit=1] ~ ~ ~ ~ ~
execute as @a[scores={carrot_stick=1..}] at @s run execute as @e[tag=marker,limit=1] at @s positioned ^ ^-0.2 ^1.2 run tp @e[tag=bullet1,tag=round] ~ ~ ~ ~ ~
execute as @a[scores={carrot_stick=1..}] at @s run execute as @e[tag=marker,limit=1] at @s positioned ^1 ^-0.2 ^-1 run tp @e[tag=bullet2,tag=round] ~ ~ ~ ~ ~
execute as @a[scores={carrot_stick=1..}] at @s run execute as @e[tag=marker,limit=1] at @s positioned ^-1 ^-0.2 ^-1 run tp @e[tag=bullet3,tag=round] ~ ~ ~ ~ ~
execute as @a[scores={carrot_stick=1..}] run tag @e[tag=round] remove round

execute as @e[tag=bullet,tag=!round] at @s run tp @s ^ ^ ^0.7
execute as @e[tag=bullet,tag=!round] at @s run function pack:druid/bullet_tracking

scoreboard players set @a[scores={carrot_stick=1..}] carrot_stick 0

#清除
execute as @a[scores={sneak_keep=0}] run kill @e[tag=round]
execute as @a[scores={sneak_keep=0}] run kill @e[tag=marker]
