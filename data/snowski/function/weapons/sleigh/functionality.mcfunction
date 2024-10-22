execute as @e[tag=SleighOffGround] at @s unless entity @p[predicate=snowski:in_sleigh] run function snowski:weapons/sleigh/pilot
execute as @a[tag=!Knocked,predicate=snowski:in_sleigh] at @s on vehicle run tag @s add Occupied
execute as @a[tag=!Knocked,predicate=snowski:in_sleigh] at @s on vehicle run function snowski:weapons/sleigh/pilot
execute as @a[tag=Knocked,predicate=snowski:in_sleigh] at @s run tp @s @s

scoreboard players add @e[tag=Sleigh,tag=!Occupied] CmdData 1
execute as @e[tag=Sleigh,scores={CmdData=950..}] at @s run particle minecraft:block{block_state:"minecraft:spruce_planks"} ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute as @e[tag=Sleigh,scores={CmdData=950..}] at @s run playsound minecraft:block.wooden_trapdoor.close master @a ~ ~ ~ 1 0
execute as @e[tag=Sleigh,scores={CmdData=950..}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.8 1.5
execute as @e[tag=Sleigh,scores={CmdData=950..}] at @s run kill @s

tag @e[tag=Occupied] remove Occupied