#> Snowball tag
tag @a[predicate=snowski:holdsb] add HoldSB

#> Thrower entity teams
execute as @a[tag=HoldSB,team=Red,scores={throwsb=1..}] at @s run tag @e[type=snowball,tag=!ThrownBall,distance=..8,limit=1,sort=nearest] add RedBall
execute as @a[tag=HoldSB,team=Green,scores={throwsb=1..}] at @s run tag @e[type=snowball,tag=!ThrownBall,distance=..8,limit=1,sort=nearest] add GreenBall
tag @e[tag=GreenBall] add Snowball
tag @e[tag=RedBall] add Snowball

#> Summon arrow at snowball's position and store thrower's uuid
execute as @e[type=snowball,tag=GreenBall,tag=!ThrownBall] at @s run summon arrow ~ ~ ~ {Tags:["SBArrow","GreenArrow"],damage:0.4,inGround:0b,OnGround:0b}
execute as @e[type=snowball,tag=RedBall,tag=!ThrownBall] at @s run summon arrow ~ ~ ~ {Tags:["SBArrow","RedArrow"],damage:0.4,inGround:0b,OnGround:0b}
execute as @e[tag=GreenArrow,tag=!ThrownBall] at @s run data modify entity @s Owner set from entity @a[team=Green,scores={throwsb=1..},limit=1,sort=nearest] UUID
execute as @e[tag=RedArrow,tag=!ThrownBall] at @s run data modify entity @s Owner set from entity @a[team=Red,scores={throwsb=1..},limit=1,sort=nearest] UUID

#> Store motion from the snowball to the arrow and add ThrownBall tag
execute as @e[tag=SBArrow,tag=!ThrownBall] at @s run tp @s @e[type=snowball,tag=!ThrownBall,limit=1,sort=nearest]
execute as @e[tag=SBArrow] at @s run data modify entity @s Motion set from entity @e[type=snowball,tag=Snowball,limit=1,sort=nearest,distance=..5] Motion
tag @e[type=snowball,tag=Snowball,tag=!ThrownBall] add ThrownBall
tag @e[type=arrow,tag=SBArrow,tag=!ThrownBall] add ThrownBall

#> Store player's snowball/ammo score
execute as @a[tag=!Knocked,scores={throwsb=1..}] store result score @s snowballammo run clear @s snowball[custom_model_data=1] 0

#> Kill the arrows that hit the ground, remove player tag
execute as @e[type=arrow,tag=SBArrow,nbt={inGround:1b,inBlockState:{Name:"minecraft:clay"}}] at @s run fill ^ ^ ^1 ^ ^ ^-1 air replace clay
execute as @e[type=arrow,tag=SBArrow,nbt={inGround:1b,inBlockState:{Name:"minecraft:clay"}}] at @s run particle minecraft:block{block_state:"minecraft:snow_block"} ^ ^ ^1 0 0 0 0.1 10

kill @e[type=arrow,tag=SBArrow,nbt={inGround:1b}]
tag @a[predicate=!snowski:holdsb] remove HoldSB