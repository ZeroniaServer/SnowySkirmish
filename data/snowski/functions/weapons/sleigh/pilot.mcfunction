execute store result entity @s Motion[0] double 0.0075 run data get entity @p Motion[0] 10000
execute store result entity @s Motion[2] double 0.0075 run data get entity @p Motion[2] 10000

execute unless entity @s[tag=SleighOffGround] at @s unless entity @p[predicate=snowski:in_sleigh,nbt={Motion:[0.0d,0.0d,0.0d]}] run particle block snow ~ ~ ~ 0.1 0 0.1 0.1 5 force
execute unless entity @s[tag=SleighOffGround] at @s unless entity @p[predicate=snowski:in_sleigh,nbt={Motion:[0.0d,0.0d,0.0d]}] run particle snowflake ~ ~ ~ 0.1 0 0.1 0.1 2 force
execute unless entity @s[tag=SleighOffGround] at @s unless entity @p[predicate=snowski:in_sleigh,nbt={Motion:[0.0d,0.0d,0.0d]}] run playsound minecraft:block.powder_snow.place master @a ~ ~ ~ 1 1

execute at @s unless block ^-1 ^ ^ air unless block ^ ^-1 ^ air unless block ^ ^-2 ^ air run tag @s add SleighJumpSmall
execute at @s unless block ^1 ^ ^ air unless block ^ ^-1 ^ air unless block ^ ^-2 ^ air run tag @s add SleighJumpSmall

execute at @s[tag=!SleighOffGround] if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tag @s add SleighJumpBig
execute at @s[tag=!SleighOffGround] if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tag @s add SleighJumpBig

execute as @e[tag=SleighJumpSmall] at @s run data modify entity @s Motion[1] set value 0.2d
tag @e[tag=SleighJumpSmall] remove SleighJumpSmall

execute as @s[tag=SleighJumpBig,tag=!SleighOffGround] at @s run data modify entity @s Motion[1] set value 1.3d
execute as @s[tag=SleighJumpBig,tag=!SleighOffGround] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 0.8
execute as @s[tag=SleighJumpBig,tag=!SleighOffGround] at @s run particle cloud ^ ^ ^ 0 0 0 0.2 1 force
execute as @s[tag=SleighJumpBig,tag=SleighOffGround] at @s run particle snowflake ^ ^-1 ^ 0 0.4 0 0 2 force
execute as @s[tag=SleighJumpBig,tag=!SleighOffGround] at @s run tag @s add SleighOffGround
execute as @s[tag=SleighJumpBig,tag=SleighOffGround,nbt={OnGround:1b}] at @s run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0
execute as @s[tag=SleighJumpBig,tag=SleighOffGround,nbt={OnGround:1b}] at @s run playsound minecraft:block.snow.place master @a ~ ~ ~ 1 0
execute as @s[tag=SleighJumpBig,tag=SleighOffGround,nbt={OnGround:1b}] at @s run playsound minecraft:block.snow.place master @a ~ ~ ~ 1 1
execute as @s[tag=SleighJumpBig,tag=SleighOffGround,nbt={OnGround:1b}] at @s run playsound minecraft:entity.snow_golem.death master @a ~ ~ ~ 1 0.8
execute as @s[tag=SleighJumpBig,tag=SleighOffGround,nbt={OnGround:1b}] at @s run particle block snow_block ~ ~1 ~ 1 1 1 0.1 100 force
scoreboard players add @s[tag=SleighJumpBig,tag=SleighOffGround,nbt={OnGround:1b}] CmdData 300
tag @s[tag=SleighJumpBig,tag=SleighOffGround,nbt={OnGround:1b}] remove SleighOffGround
tag @s[tag=SleighJumpBig,tag=!SleighOffGround] remove SleighJumpBig