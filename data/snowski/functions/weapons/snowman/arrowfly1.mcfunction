execute if entity @s[tag=GreenSnowman] facing entity @a[limit=1,sort=nearest,team=Red,distance=..10] eyes positioned 0.0 0 0.0 run summon arrow ^ ^ ^3 {Team:"Green",damage:0.1s,life:10s,Tags:["BArrow","NewBArrow"]}
execute if entity @s[tag=RedSnowman] facing entity @a[limit=1,sort=nearest,team=Green,distance=..10] eyes positioned 0.0 0 0.0 run summon arrow ^ ^ ^3 {Team:"Red",damage:0.1s,life:10s,Tags:["BArrow","NewBArrow"]}
execute if entity @s[tag=Snowman] positioned 0.0 0 0.0 run data modify entity @e[tag=NewBArrow,limit=1] Owner set from entity @s UUID
execute as @e[type=arrow,tag=NewBArrow] run function snowski:weapons/snowman/arrowfly2