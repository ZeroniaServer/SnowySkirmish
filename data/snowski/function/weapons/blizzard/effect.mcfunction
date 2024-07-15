execute as @e[tag=BlizzardCloud] at @s run particle cloud ~ ~5 ~ 1 0.4 1 0.02 5 force
execute as @e[tag=BlizzardCloud] at @s run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 1 0.4 1 0 4 force
execute as @e[tag=BlizzardCloud] at @s run particle minecraft:snowflake ~ ~4.5 ~ 0.8 0 0.8 0 12 force

execute as @e[tag=BlizzardCloud] at @s run tp @s ~ ~ ~ ~8 ~

execute as @e[tag=GreenBlizzardCloud] at @s run particle minecraft:dust{color:[0,1,0],scale:2} ^ ^ ^3 0 0.3 0 0 4 force
execute as @e[tag=GreenBlizzardCloud] at @s run particle minecraft:dust{color:[0,1,0],scale:2} ^ ^ ^-3 0 0.3 0 0 4 force
execute as @e[tag=GreenBlizzardCloud] at @s run particle minecraft:dust{color:[0,1,0],scale:2} ^3 ^ ^ 0 0.3 0 0 4 force
execute as @e[tag=GreenBlizzardCloud] at @s run particle minecraft:dust{color:[0,1,0],scale:2} ^-3 ^ ^ 0 0.3 0 0 4 force

execute as @e[tag=RedBlizzardCloud] at @s run particle minecraft:dust{color:[1,0,0],scale:2} ^ ^ ^3 0 0.3 0 0 4 force
execute as @e[tag=RedBlizzardCloud] at @s run particle minecraft:dust{color:[1,0,0],scale:2} ^ ^ ^-3 0 0.3 0 0 4 force
execute as @e[tag=RedBlizzardCloud] at @s run particle minecraft:dust{color:[1,0,0],scale:2} ^3 ^ ^ 0 0.3 0 0 4 force
execute as @e[tag=ReddBlizzardCloud] at @s run particle minecraft:dust{color:[1,0,0],scale:2} ^-3 ^ ^ 0 0.3 0 0 4 force



scoreboard players add @e[tag=BlizzardCloud] CmdData 1

#> Against players - Green
execute as @e[tag=GreenBlizzardCloud] at @s run effect give @a[team=Red,distance=..2] slowness 2 3 true
execute as @e[tag=GreenBlizzardCloud,scores={CmdData=10..}] at @s run scoreboard players add @a[tag=!Knocked,team=Red,distance=..2] sbdamage 3
execute as @e[tag=GreenBlizzardCloud,scores={CmdData=10..}] at @s run tag @a[tag=!Knocked,team=Red,distance=..2] add bbdamaged
execute as @e[tag=GreenBlizzardCloud,scores={CmdData=10..}] at @s as @a[tag=!Knocked,team=Red,distance=..2] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~0.5 1
execute as @e[tag=GreenBlizzardCloud,scores={CmdData=10..}] at @s store result score @a[tag=!Knocked,team=Red,distance=..2] UUIDtracker run scoreboard players get @s playerUUID

#> Against players - Red
execute as @e[tag=RedBlizzardCloud] at @s run effect give @a[team=Green,distance=..2] slowness 2 3 true
execute as @e[tag=RedBlizzardCloud,scores={CmdData=10..}] at @s run scoreboard players add @a[tag=!Knocked,team=Green,distance=..2] sbdamage 3
execute as @e[tag=RedBlizzardCloud,scores={CmdData=10..}] at @s run tag @a[tag=!Knocked,team=Green,distance=..2] add bbdamaged
execute as @e[tag=RedBlizzardCloud,scores={CmdData=10..}] at @s as @a[tag=!Knocked,team=Green,distance=..2] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~0.5 1
execute as @e[tag=RedBlizzardCloud,scores={CmdData=10..}] at @s store result score @a[tag=!Knocked,team=Green,distance=..2] UUIDtracker run scoreboard players get @s playerUUID

scoreboard players reset @e[tag=BlizzardCloud,scores={CmdData=10..}] CmdData

#> Blizzard sound
scoreboard players add @e[tag=BlizzardCloud] blizzsound 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=1}] at @s run playsound blizz1 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=20}] at @s run playsound blizz2 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=40}] at @s run playsound blizz3 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=60}] at @s run playsound blizz4 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=80}] at @s run playsound blizz5 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=100}] at @s run playsound blizz6 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=120}] at @s run playsound blizz7 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=140}] at @s run playsound blizz8 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=160}] at @s run playsound blizz9 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=180}] at @s run playsound blizz10 master @a ~ ~ ~ 1 1
execute as @e[tag=BlizzardCloud,scores={blizzsound=200}] at @s run playsound blizz11 master @a ~ ~ ~ 1 1