execute at @s rotated ~ 0 positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["sword","moving"],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[-12.1f,0f,-149.8f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},HandItems:[{id:"minecraft:iron_sword",Count:1b,Damage:0s},{}]}

execute as @s at @s rotated ~ ~ positioned ^-0.3 ^ ^0.8 run tp @e[tag=sword,distance=..1,limit=1] ~ ~ ~ ~ ~

scoreboard players set @s carrot_stick 0