scoreboard players set @e[tag=SleighSpawn] RNGmax 2048
execute as @e[tag=SleighSpawn] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=SleighSpawn] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @e[tag=SleighSpawn,scores={RNGscore=1..}] at @s run summon minecraft:minecart ~ ~ ~ {CustomDisplayTile:1,DisplayState:{Name:"minecraft:glass"},DisplayOffset:0,Invulnerable:1b,Tags:["SleighCart","Sleigh","NewSleighCart"]}
execute as @e[tag=SleighSpawn,scores={RNGscore=0}] at @s run summon minecraft:minecart ~ ~ ~ {CustomDisplayTile:1,DisplayState:{Name:"minecraft:purple_stained_glass"},DisplayOffset:0,Invulnerable:1b,Tags:["SleighCart","Sleigh","NewSleighCart"]}
execute as @e[tag=SleighSpawn,scores={RNGscore=0}] at @s run tellraw @a[distance=..9,limit=3,sort=nearest] ["","\n",{"text":"Hey nice! You have found a little secret! ","bold":true,"color":"blue"},"\n",{"text":"That has a 0.05% chance to spawn! You should probably screenshot that!","italic":true,"color":"dark_aqua"},"\n"]

scoreboard players set @e[tag=NewSleighCart] SleighM1 0
scoreboard players set @e[tag=NewSleighCart] SleighM2 0
scoreboard players set @e[tag=NewSleighCart] SleighM3 0

tag @e[tag=NewSleighCart] remove NewSleighCart

kill @e[tag=SleighSpawn]