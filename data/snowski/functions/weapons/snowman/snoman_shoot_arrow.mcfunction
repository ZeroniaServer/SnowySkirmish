scoreboard players add @e[tag=Snowman] snowmanspray 1
execute as @e[tag=GreenSnowman,scores={snowmanspray=..25}] at @s if entity @a[tag=!Knocked,team=Red,distance=..10] run tag @s add SnowmanShoot
execute as @e[tag=RedSnowman,scores={snowmanspray=..25}] at @s if entity @a[tag=!Knocked,team=Green,distance=..10] run tag @s add SnowmanShoot
scoreboard players reset @e[tag=Snowman,scores={snowmanspray=100..}] snowmanspray

scoreboard players add @e[tag=SnowmanShoot] snowmanarrow 1
execute as @e[tag=GreenSnowman,scores={snowmanarrow=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LOSTracker","LOSTrackerGreen"],Duration:1}
execute as @e[tag=RedSnowman,scores={snowmanarrow=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LOSTracker","LOSTrackerRed"],Duration:1}
execute as @e[scores={snowmanarrow=1}] at @s run tp @e[tag=LOSTracker,distance=..1,limit=1,sort=nearest,type=area_effect_cloud] @s
execute as @e[scores={snowmanarrow=1}] at @s run tp @e[tag=LOSTracker,distance=..1,limit=1,sort=nearest,type=area_effect_cloud] ~ ~1.5 ~
execute as @e[tag=LOSTracker,type=area_effect_cloud] at @s run function snowski:weapons/snowman/lostrack


execute as @e[tag=BArrow] run data merge entity @s {damage:0.3}
kill @e[type=arrow,tag=BArrow,nbt={inGround:1b}]

execute as @e[tag=SnowmanShoot,scores={snowmanarrow=10}] at @s anchored eyes positioned ^ ^ ^ run function snowski:weapons/snowman/arrowfly1

tag @e[tag=Snowman,scores={snowmanarrow=10}] remove SnowmanShoot
scoreboard players reset @e[tag=Snowman,scores={snowmanarrow=10..}] snowmanarrow