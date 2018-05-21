execute at @s rotated ~ 0 positioned ^ ^ ^0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet1"],NoGravity:1b}
execute at @s rotated ~ 0 positioned ^ ^ ^0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet2"],NoGravity:1b}
execute at @s rotated ~ 0 positioned ^ ^ ^0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet3"],NoGravity:1b}
execute at @s rotated ~ 0 positioned ^ ^ ^0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet4"],NoGravity:1b}

execute as @s at @s rotated ~ 0 positioned ^ ^ ^1 run tp @e[tag=bullet,distance=..1,limit=4] ~ ~1 ~ ~ ~
execute as @s at @s run function magic:get_target

scoreboard players set @s carrot_stick 0