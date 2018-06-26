execute at @s rotated ~ 0 positioned ^ ^ ^0.8 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet1"]}
execute at @s rotated ~ 0 positioned ^ ^ ^0.8 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet2"]}
execute at @s rotated ~ 0 positioned ^ ^ ^0.8 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet3"]}
execute at @s rotated ~ 0 positioned ^ ^ ^0.8 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet4"]}

execute as @s at @s rotated ~ 0 positioned ^ ^ ^1 run tp @e[tag=bullet,distance=..1,limit=4] ~ ~1 ~ ~ ~

scoreboard players set @s carrot_stick 0