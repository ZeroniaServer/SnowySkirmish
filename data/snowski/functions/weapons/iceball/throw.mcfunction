#> Iceball tag
tag @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] add HoldIB

#> Thrower entity teams
execute as @a[tag=HoldIB,team=Red,scores={throwsb=1..}] at @s run tag @e[type=snowball,tag=!ThrownBall,distance=..8,limit=1,sort=nearest] add RedIBall
execute as @a[tag=HoldIB,team=Green,scores={throwsb=1..}] at @s run tag @e[type=snowball,tag=!ThrownBall,distance=..8,limit=1,sort=nearest] add GreenIBall
tag @e[tag=RedIBall] add IBall
tag @e[tag=GreenIBall] add IBall

#> Summon arrow at iceball's position and store thrower's uuid
execute as @e[type=snowball,tag=GreenIBall,tag=!ThrownBall] at @s run summon arrow ~ ~ ~ {damage:10.0,Tags:["IBArrow","GreenIArrow"],Team:["Green"],inGround:0b}
execute as @e[type=snowball,tag=RedIBall,tag=!ThrownBall] at @s run summon arrow ~ ~ ~ {damage:10.0,Tags:["IBArrow","RedIArrow"],Team:["Red"],inGround:0b}
execute as @e[tag=GreenIArrow,tag=!ThrownBall] at @s run data modify entity @s Owner set from entity @a[team=Green,scores={throwsb=1..},limit=1,sort=nearest] UUID
execute as @e[tag=RedIArrow,tag=!ThrownBall] at @s run data modify entity @s Owner set from entity @a[team=Red,scores={throwsb=1..},limit=1,sort=nearest] UUID

#> Store motion from the iceball to the arrow and add ThrownBall tag
execute as @e[tag=IBArrow] at @s run data modify entity @s Motion set from entity @e[type=snowball,distance=..5,limit=1,sort=nearest] Motion
tag @e[type=snowball,tag=IBall,tag=!ThrownBall] add ThrownBall
tag @e[type=arrow,tag=IBall,tag=!ThrownBall] add ThrownBall

#> Kill the arrows that hit the ground, remove player tag
execute as @e[type=arrow,tag=IBArrow,nbt={inGround:1b}] at @s run particle block ice ~ ~ ~ 0 0 0 0.1 20 force
execute as @e[type=arrow,tag=IBArrow,nbt={inGround:1b}] at @s run particle block blue_ice ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[type=arrow,tag=IBArrow,nbt={inGround:1b}] at @s run particle splash ~ ~ ~ 0 0 0 0.1 20 force
execute as @e[type=arrow,tag=IBArrow,nbt={inGround:1b}] at @s run playsound iceball master @a ~ ~ ~ 1 1.3
execute as @e[type=arrow,tag=IBArrow,nbt={inGround:1b}] at @s run kill @s
kill @e[type=arrow,tag=ThrownBall,nbt={inGround:1b}]
tag @a[nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] remove HoldIB

#> Store player's snowball/ammo score
execute as @a store result score @s iceballammo run clear @s snowball{CustomModelData:2} 0

#> Distance and fancy particles
execute as @e[tag=IBall] at @s run particle block ice ~ ~ ~ 0 0 0 0.1 1 force
scoreboard players add @e[tag=IBall] CmdData 1
scoreboard players add @e[tag=IBArrow] CmdData 1
execute as @e[tag=IBall,scores={CmdData=15..}] at @s run particle splash ~ ~ ~ 0 0 0 0.1 40 force
execute as @e[tag=IBall,scores={CmdData=15..}] at @s run playsound iceball master @a ~ ~ ~ 0.6 1.3
kill @e[tag=IBall,scores={CmdData=15..}]
kill @e[tag=IBArrow,scores={CmdData=15..}]
