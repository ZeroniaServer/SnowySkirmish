#> Iceball tag
tag @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:3}}}] add HoldBB

#> Thrower entity teams
execute as @a[tag=HoldBB,team=Red,scores={throwsb=1..}] at @s run tag @e[type=snowball,tag=!ThrownBall,distance=..8,limit=1,sort=nearest] add RedBBottle
execute as @a[tag=HoldBB,team=Green,scores={throwsb=1..}] at @s run tag @e[type=snowball,tag=!ThrownBall,distance=..8,limit=1,sort=nearest] add GreenBBottle
tag @e[tag=RedBBottle] add BBottle
tag @e[tag=GreenBBottle] add BBottle

#> Summon arrow at iceball's position and store thrower's uuid/name
execute as @e[type=snowball,tag=GreenBBottle,tag=!ThrownBall] at @s run summon arrow ~ ~ ~ {damage:0.0,Tags:["BBArrow","GreenBBArrow"],Team:["Green"],inGround:0b}
execute as @e[type=snowball,tag=RedBBottle,tag=!ThrownBall] at @s run summon arrow ~ ~ ~ {damage:0.0,Tags:["BBArrow","RedBBArrow"],Team:["Red"],inGround:0b}
execute as @e[tag=GreenBBArrow,tag=!ThrownBall] at @s run data modify entity @s Owner set from entity @a[team=Green,tag=HoldBB,scores={throwsb=1..},limit=1,sort=nearest] UUID
execute as @e[tag=RedBBArrow,tag=!ThrownBall] at @s run data modify entity @s Owner set from entity @a[team=Red,tag=HoldBB,scores={throwsb=1..},limit=1,sort=nearest] UUID
execute as @e[tag=BBArrow,tag=!ThrownBall] store result score @s playerUUID run data get entity @s Owner[0]

execute if entity @e[type=arrow,tag=BBArrow,tag=!ThrownBall] run setblock 0 0 0 oak_sign
execute as @e[type=arrow,tag=BBArrow,tag=!ThrownBall] run function snowski:weapons/blizzard/name
setblock 0 0 0 air

#> Store motion from the iceball to the arrow and add ThrownBall tag
execute as @e[tag=BBArrow] at @s run data modify entity @s Motion set from entity @e[type=snowball,distance=..5,limit=1,sort=nearest] Motion
tag @e[type=snowball,tag=BBottle,tag=!ThrownBall] add ThrownBall
tag @e[type=arrow,tag=BBArrow,tag=!ThrownBall] add ThrownBall

#> Kill the arrows that hit the ground, remove player tag
execute as @e[type=arrow,tag=RedBBArrow] at @s unless entity @e[type=snowball,tag=RedBBottle,distance=..2,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["BlizzardCloud","RedBlizzardCloud"]}
execute as @e[type=arrow,tag=GreenBBArrow] at @s unless entity @e[type=snowball,tag=GreenBBottle,distance=..2,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["BlizzardCloud","GreenBlizzardCloud"]}
execute as @e[type=arrow,tag=RedBBArrow] at @s unless entity @e[type=snowball,tag=RedBBottle,distance=..2,limit=1] run tag @s add BottleHit
execute as @e[type=arrow,tag=GreenBBArrow] at @s unless entity @e[type=snowball,tag=GreenBBottle,distance=..2,limit=1] run tag @s add BottleHit

execute as @e[type=arrow,tag=RedBBArrow,tag=!BottleHit,nbt={inGround:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["BlizzardCloud","RedBlizzardCloud"]}
execute as @e[type=arrow,tag=GreenBBArrow,tag=!BottleHit,nbt={inGround:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["BlizzardCloud","GreenBlizzardCloud"]}
execute as @e[type=arrow,tag=BBArrow,nbt={inGround:1b}] at @s run tag @s add BottleHit

#> Copy UUID and name
execute as @e[type=arrow,tag=RedBBArrow,tag=BottleHit] at @s store result score @e[type=area_effect_cloud,tag=RedBlizzardCloud,sort=nearest,limit=1] playerUUID run data get entity @s UUID[0]
execute as @e[type=arrow,tag=GreenBBArrow,tag=BottleHit] at @s store result score @e[type=area_effect_cloud,tag=GreenBlizzardCloud,sort=nearest,limit=1] playerUUID run data get entity @s UUID[0]
execute as @e[type=arrow,tag=RedBBArrow,tag=BottleHit] at @s run data modify entity @e[type=area_effect_cloud,tag=RedBlizzardCloud,sort=nearest,limit=1] CustomName set from entity @s CustomName
execute as @e[type=arrow,tag=GreenBBArrow,tag=BottleHit] at @s run data modify entity @e[type=area_effect_cloud,tag=GreenBlizzardCloud,sort=nearest,limit=1] CustomName set from entity @s CustomName

execute as @e[type=arrow,tag=BBArrow,tag=BottleHit] at @s run particle cloud ~ ~ ~ 0.1 0.3 0.1 0.1 20 force
execute as @e[type=arrow,tag=BBArrow,tag=BottleHit] at @s run particle block glass ~ ~ ~ 0.3 0.3 0.3 0.1 30 force
execute as @e[type=arrow,tag=BBArrow,tag=BottleHit] at @s run playsound bottlehit master @a ~ ~ ~ 1.5 1.3
execute as @e[type=arrow,tag=BBArrow,tag=BottleHit] at @s run kill @s
kill @e[type=arrow,tag=ThrownBall,nbt={inGround:1b}]
tag @a[nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:3}}}] remove HoldBB