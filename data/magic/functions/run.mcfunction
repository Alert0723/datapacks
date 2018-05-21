scoreboard players add @e[tag=bullet] timer 1
kill @e[tag=bullet,scores={timer=100..}]

execute as @a[scores={carrot_stick=1..}] run function magic:click

#现在是特效时间
#execute as @e[tag=bullet] at @s run particle minecraft:entity_effect ~ ~1 ~ 1 0.5 0 10 0 normal @a
execute as @e[tag=bullet] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a

#初始化弹道
execute as @e[tag=bullet1,scores={timer=1}] at @s run tp @s ~ ~ ~ ~4 ~2
execute as @e[tag=bullet2,scores={timer=1}] at @s run tp @s ~ ~ ~ ~-4 ~2
execute as @e[tag=bullet3,scores={timer=1}] at @s run tp @s ~ ~ ~ ~4 ~-2
execute as @e[tag=bullet4,scores={timer=1}] at @s run tp @s ~ ~ ~ ~-4 ~-2

execute as @e[tag=bullet1,scores={timer=2..6}] at @s run tp @s ^0.4 ^0.4 ^0.3 ~ ~
execute as @e[tag=bullet2,scores={timer=2..6}] at @s run tp @s ^-0.4 ^0.4 ^0.3 ~ ~
execute as @e[tag=bullet3,scores={timer=2..6}] at @s run tp @s ^0.4 ^ ^0.3 ~ ~
execute as @e[tag=bullet4,scores={timer=2..6}] at @s run tp @s ^-0.4 ^ ^0.3 ~ ~

#弹道修正
execute as @e[tag=bullet,scores={timer=8..}] at @s run function magic:modules/bullet_tracking

#移动
execute as @e[tag=bullet,scores={timer=8..}] at @s run tp @s ^ ^ ^0.5


#爆炸判定
execute as @e[tag=bullet] at @s if block ~ ~ ~ #magic:all_blocks run summon minecraft:creeper ~ ~ ~ {CustomName:"",CustomNameVisible:0b,Fuse:0s,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2,ShowParticles:0b}]}
execute as @e[tag=bullet] at @s if entity @e[tag=!bullet,distance=..1] run summon minecraft:creeper ~ ~ ~ {CustomName:"",CustomNameVisible:0b,Fuse:0s,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2,ShowParticles:0b}]}

execute as @e[tag=bullet] at @s if block ~ ~ ~ #magic:all_blocks run kill @s
execute as @e[tag=bullet] at @s if entity @e[tag=!bullet,distance=..1] run kill @s
kill @e[type=area_effect_cloud,tag=]
