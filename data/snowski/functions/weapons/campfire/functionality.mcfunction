execute as @e[tag=GreenCRP,tag=!KillFire] at @s as @a[team=Green,tag=Knocked,distance=..1.5,scores={nnhealth=1}] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was revived! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"-2","color":"gold"}]
execute as @e[tag=GreenCRP,tag=!KillFire] at @s as @a[team=Green,tag=Knocked,distance=..1.5,scores={nnhealth=1}] run scoreboard players remove $RedGifts CmdData 2
execute as @e[tag=GreenCRP,tag=!KillFire] at @s if entity @a[team=Green,tag=Knocked,distance=..1.5,scores={nnhealth=1}] run scoreboard players set @s CmdData 850
execute as @e[tag=GreenCRP,tag=!KillFire] at @s run scoreboard players add @a[team=Green,tag=Knocked,distance=..1.5,scores={nnhealth=1}] nnhealth_mod 1

execute as @e[tag=RedCRP,tag=!KillFire] at @s as @a[team=Red,tag=Knocked,distance=..1.5,scores={nnhealth=1}] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" was revived! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"-2","color":"gold"}]
execute as @e[tag=RedCRP,tag=!KillFire] at @s as @a[team=Red,tag=Knocked,distance=..1.5,scores={nnhealth=1}] run scoreboard players remove $GreenGifts CmdData 2
execute as @e[tag=RedCRP,tag=!KillFire] at @s if entity @a[team=Red,tag=Knocked,distance=..1.5,scores={nnhealth=1}] run scoreboard players set @s CmdData 850
execute as @e[tag=RedCRP,tag=!KillFire] at @s run scoreboard players add @a[team=Red,tag=Knocked,distance=..1.5,scores={nnhealth=1}] nnhealth_mod 1

scoreboard players add @e[tag=CRP] CmdData 1
scoreboard players add @e[tag=CRPCircle] CmdData 1

execute as @e[tag=CRPCircle,scores={CmdData=1}] at @s as @e[tag=CRP,tag=!KillFire,scores={CmdData=..400},limit=1,sort=nearest,distance=..2] run particle campfire_cosy_smoke ~ ~1 ~ 0 1 0 0 1 force
execute as @e[tag=CRPCircle,scores={CmdData=1}] at @s as @e[tag=CRP,tag=!KillFire,scores={CmdData=400..600},limit=1,sort=nearest,distance=..2] run particle large_smoke ~ ~1 ~ 0 1 0 .05 1 force
execute as @e[tag=CRPCircle,scores={CmdData=1}] at @s as @e[tag=CRP,tag=!KillFire,scores={CmdData=850..},limit=1,sort=nearest,distance=..2] run particle smoke ~ ~1 ~ 0 1 0 .05 1 force
execute as @e[tag=CRP,scores={CmdData=850..},tag=!KillFire] run item replace entity @s armor.head with blaze_spawn_egg{CustomModelData:2}
execute as @e[tag=CRP,scores={CmdData=850..},tag=!KillFire] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 1 1.7
execute as @e[tag=CRP,scores={CmdData=850..},tag=!KillFire] at @s run particle smoke ~ ~ ~ 0.1 0 0.1 0.1 7 force
execute as @e[tag=CRP,scores={CmdData=850..},tag=!KillFire] at @s run fill ~ ~ ~ ~ ~ ~ air replace light
execute as @e[tag=CRP,scores={CmdData=850..},tag=!KillFire] at @s run kill @e[tag=CRPCircle,distance=..2,limit=1,sort=nearest]
tag @e[tag=CRP,scores={CmdData=850..}] add KillFire

execute as @e[tag=CRP] at @s unless block ~ ~ ~ air unless block ~ ~ ~ light run scoreboard players set @s CmdData 1250
execute as @e[tag=CRP] at @s if block ~ ~-1 ~ air run scoreboard players set @s CmdData 1250

scoreboard players reset @e[tag=CRPCircle,scores={CmdData=10..}] CmdData

execute as @e[tag=CRP,scores={CmdData=1250..}] at @s run particle block magma_block ~ ~ ~ 0.1 0 0.1 0 10 force
execute as @e[tag=CRP,scores={CmdData=1250..}] at @s run fill ~ ~ ~ ~ ~ ~ air replace light
execute as @e[tag=CRP,tag=!KilledCircle,scores={CmdData=1250..}] at @s run kill @e[tag=CRPCircle,limit=1,sort=nearest,distance=..2]
execute as @e[tag=CRP,scores={CmdData=1250..}] run kill @s

#> Circle
execute as @e[tag=CRPCircle] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=CRPCircleRed] at @s run particle dust 1 0 0 1 ^ ^ ^1.2 0 0 0 0 1 force
execute as @e[tag=CRPCircleGreen] at @s run particle dust 0 1 0 1 ^ ^ ^1.2 0 0 0 0 1 force
execute as @e[tag=CRPCircleRed] at @s run particle dust 1 0 0 1 ^ ^ ^-1.2 0 0 0 0 1 force
execute as @e[tag=CRPCircleGreen] at @s run particle dust 0 1 0 1 ^ ^ ^-1.2 0 0 0 0 1 force
execute as @e[tag=CRPCircleRed] at @s run particle dust 1 0 0 1 ^1.2 ^ ^ 0 0 0 0 1 force
execute as @e[tag=CRPCircleGreen] at @s run particle dust 0 1 0 1 ^1.2 ^ ^ 0 0 0 0 1 force
execute as @e[tag=CRPCircleRed] at @s run particle dust 1 0 0 1 ^-1.2 ^ ^ 0 0 0 0 1 force
execute as @e[tag=CRPCircleGreen] at @s run particle dust 0 1 0 1 ^-1.2 ^ ^ 0 0 0 0 1 force

#> Snow and iceball impacts
execute as @e[tag=RedCRP,tag=!KillFire] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=GreenArrow,tag=!HitSM,dx=1,dy=1,dz=1] run scoreboard players add @s CmdData 200
execute as @e[tag=GreenCRP,tag=!KillFire] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=RedArrow,tag=!HitSM,dx=1,dy=1,dz=1] run scoreboard players add @s CmdData 200
execute as @e[tag=RedCRP,tag=!KillFire] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=GreenIArrow,tag=!HitSM,dx=1,dy=1,dz=1] run scoreboard players add @s CmdData 850
execute as @e[tag=GreenCRP,tag=!KillFire] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=RedIArrow,tag=!HitSM,dx=1,dy=1,dz=1] run scoreboard players add @s CmdData 850
execute as @e[tag=RedCRP,tag=!KillFire,scores={CmdData=..849}] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=GreenArrow,tag=!HitSM,dx=1,dy=1,dz=1] run playsound block.fire.extinguish master @a ~ ~ ~ 0.1 1.0
execute as @e[tag=GreenCRP,tag=!KillFire,scores={CmdData=..849}] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=RedArrow,tag=!HitSM,dx=1,dy=1,dz=1] run playsound block.fire.extinguish master @a ~ ~ ~ 0.1 1.0