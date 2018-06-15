
#计时
scoreboard players add @a[scores={timer=1..}] timer 1

#行为激活
scoreboard players set @a[scores={carrot_stick=1..},tag=] timer 1
tag @a[scores={carrot_stick=1..},tag=] add qte_start

#qte分类
#execute as @a run function pack:qte/r-r-r
execute as @a run function pack:qte/r-s-r


scoreboard players set @a[scores={carrot_stick=1..}] carrot_stick 0
