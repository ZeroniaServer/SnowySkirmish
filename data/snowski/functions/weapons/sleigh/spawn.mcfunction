execute as @e[tag=SleighSpawn] at @s run summon minecraft:minecart ~ ~ ~ {CustomDisplayTile:1,DisplayState:{Name:"minecraft:glass"},DisplayOffset:0,Invulnerable:1b,Tags:["SleighCart","Sleigh","NewSleighCart"]}

scoreboard players set @e[tag=NewSleighCart] SleighM1 0
scoreboard players set @e[tag=NewSleighCart] SleighM2 0
scoreboard players set @e[tag=NewSleighCart] SleighM3 0

tag @e[tag=NewSleighCart] remove NewSleighCart

kill @e[tag=SleighSpawn]