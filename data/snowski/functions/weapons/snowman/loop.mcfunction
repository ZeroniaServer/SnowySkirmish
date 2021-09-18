scoreboard players add @e[tag=Snowman] CmdData 1
execute as @e[tag=Snowman,scores={CmdData=200..}] at @s run particle splash ~ ~0.4 ~ 0.3 0.3 0.3 0.1 6 force
execute as @e[tag=Snowman,scores={CmdData=230..240}] at @s run particle dripping_water ~ ~0.4 ~ 0.2 0.2 0.2 0.1 5 force
execute as @e[tag=Snowman,scores={CmdData=280..}] at @s run particle block snow_block ~ ~ ~ 0.3 1 0.3 0.1 40 force
kill @e[tag=Snowman,scores={CmdData=280..}]

execute as @e[tag=GreenSnowman] at @s unless block ~ ~-0.1 ~ air run tp @s ~ ~ ~ facing entity @a[team=Red,tag=!Knocked,limit=1,sort=nearest]
execute as @e[tag=RedSnowman] at @s unless block ~ ~-0.1 ~ air run tp @s ~ ~ ~ facing entity @a[team=Green,tag=!Knocked,limit=1,sort=nearest]

#> Snowman HP
execute as @e[tag=GreenSnowman] at @s anchored feet if entity @e[tag=RedArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run scoreboard players add @s CmdData 60
execute as @e[tag=GreenSnowman] at @s anchored feet if entity @e[tag=RedArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run particle block snow_block ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=GreenSnowman] at @s anchored feet if entity @e[tag=RedArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run tag @e[tag=RedArrow,limit=1,sort=nearest,distance=..1.6] add HitSM
execute as @e[tag=GreenSnowman] at @s anchored eyes if entity @e[tag=RedArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run scoreboard players add @s CmdData 60
execute as @e[tag=GreenSnowman] at @s anchored eyes if entity @e[tag=RedArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run particle block snow_block ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=GreenSnowman] at @s anchored eyes if entity @e[tag=RedArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run tag @e[tag=RedArrow,limit=1,sort=nearest,distance=..1.6] add HitSM
execute as @e[tag=RedSnowman] at @s anchored feet if entity @e[tag=GreenArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run scoreboard players add @s CmdData 60
execute as @e[tag=RedSnowman] at @s anchored feet if entity @e[tag=GreenArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run particle block snow_block ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=RedSnowman] at @s anchored feet if entity @e[tag=GreenArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run tag @e[tag=GreenArrow,limit=1,sort=nearest,distance=..1.6] add HitSM
execute as @e[tag=RedSnowman] at @s anchored eyes if entity @e[tag=GreenArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run scoreboard players add @s CmdData 60
execute as @e[tag=RedSnowman] at @s anchored eyes if entity @e[tag=GreenArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run particle block snow_block ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=RedSnowman] at @s anchored eyes if entity @e[tag=GreenArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run tag @e[tag=GreenArrow,limit=1,sort=nearest,distance=..1.6] add HitSM

execute as @e[tag=GreenSnowman] at @s anchored feet if entity @e[tag=RedIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run scoreboard players add @s CmdData 280
execute as @e[tag=GreenSnowman] at @s anchored feet if entity @e[tag=RedIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run particle block snow_block ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=GreenSnowman] at @s anchored feet if entity @e[tag=RedIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run tag @e[tag=RedIArrow,limit=1,sort=nearest,distance=..1.6] add HitSM
execute as @e[tag=GreenSnowman] at @s anchored eyes if entity @e[tag=RedIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run scoreboard players add @s CmdData 280
execute as @e[tag=GreenSnowman] at @s anchored eyes if entity @e[tag=RedIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run particle block ice ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=GreenSnowman] at @s anchored eyes if entity @e[tag=RedIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run tag @e[tag=RedIArrow,limit=1,sort=nearest,distance=..1.6] add HitSM
execute as @e[tag=RedSnowman] at @s anchored feet if entity @e[tag=GreenIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run scoreboard players add @s CmdData 280
execute as @e[tag=RedSnowman] at @s anchored feet if entity @e[tag=GreenIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run particle block snow_block ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=RedSnowman] at @s anchored feet if entity @e[tag=GreenIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run tag @e[tag=GreenIArrow,limit=1,sort=nearest,distance=..1.6] add HitSM
execute as @e[tag=RedSnowman] at @s anchored eyes if entity @e[tag=GreenIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run scoreboard players add @s CmdData 280
execute as @e[tag=RedSnowman] at @s anchored eyes if entity @e[tag=GreenIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run particle block ice ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=RedSnowman] at @s anchored eyes if entity @e[tag=GreenIArrow,tag=!HitSM,distance=..1.6,limit=1,sort=nearest] run tag @e[tag=GreenIArrow,limit=1,sort=nearest,distance=..1.6] add HitSM


#> Snowman snowballs
execute as @e[type=arrow,tag=!ThrownBall,tag=!SBArrow,tag=!IBArrow] at @s run particle falling_dust snow_block ~ ~ ~ 0.1 0.1 0.1 0.1 2 force
execute as @e[type=arrow,tag=!ThrownBall,tag=!SBArrow,tag=!IBArrow] at @s run particle falling_dust ice ~ ~ ~ 0.1 0.1 0.1 0.1 1 force

#> Spawn
function snowski:weapons/snowman/spawn