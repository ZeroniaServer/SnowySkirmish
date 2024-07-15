scoreboard players add @s snowmanarrow 1

execute as @s[tag=!Returned,tag=!DeniedLOS] at @s if entity @e[tag=SnowmanShoot,distance=..4,limit=1,sort=nearest,type=armor_stand] run tag @e[tag=SnowmanShoot,distance=..4,limit=1,sort=nearest,type=armor_stand] add BotFireArrow
execute as @s[tag=BotSpotted,tag=!DeniedLOS] at @s if entity @e[tag=SnowmanShoot,distance=..4,limit=1,sort=nearest,type=armor_stand] run tag @s add Returned
execute as @s[tag=BotSpotted,tag=!DeniedLOS] at @s if entity @e[tag=SnowmanShoot,distance=..4,limit=1,sort=nearest,type=armor_stand] run kill @s
execute as @s[tag=!DeniedLOS] at @s unless block ^ ^ ^0.1 air run kill @s

execute as @s[tag=LOSTrackerRed,tag=!Returned,tag=!DeniedLOS] at @s unless block ~ ~ ~ air run tag @s add DeniedLOS
execute as @s[tag=LOSTrackerRed,tag=!Returned,tag=!DeniedLOS] at @s if block ^ ^ ^0.1 air unless entity @e[team=Green,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute as @s[tag=LOSTrackerRed,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Green,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute as @s[tag=LOSTrackerRed,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Green,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

execute as @s[tag=LOSTrackerRed,tag=!DeniedLOS] at @s if entity @e[team=Green,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute as @s[tag=LOSTrackerGreen,tag=!Returned,tag=!DeniedLOS] at @s if block ^ ^ ^0.1 air unless entity @e[team=Red,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute as @s[tag=LOSTrackerGreen,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Red,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute as @s[tag=LOSTrackerGreen,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Red,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

kill @s[tag=DeniedLOS]

kill @s[scores={snowmanarrow=451..}]

execute as @s[tag=LOSTrackerGreen,tag=!DeniedLOS] at @s if entity @e[team=Red,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute as @s[tag=!DeniedLOS] at @s unless block ~ ~ ~ air run function snowski:weapons/snowman/lostrack
execute as @s at @s unless block ~ ~ ~ air run tag @s add DeniedLOS
kill @s[tag=DeniedLOS]