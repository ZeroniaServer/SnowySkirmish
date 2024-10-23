execute on passengers if predicate snowski:forward rotated ~ 0 on vehicle run function snowski:weapons/sleigh/move {direction:"^ ^ ^1.31094607"}
execute on passengers if predicate snowski:forward if predicate snowski:left rotated ~ 0 on vehicle run function snowski:weapons/sleigh/move {direction:"^1.31094607 ^ ^1.31094607"}
execute on passengers if predicate snowski:forward if predicate snowski:right rotated ~ 0 on vehicle run function snowski:weapons/sleigh/move {direction:"^-1.31094607 ^ ^1.31094607"}
execute on passengers if predicate snowski:backward rotated ~ 0 on vehicle run function snowski:weapons/sleigh/move {direction:"^ ^ ^-1.31094607"}
execute on passengers if predicate snowski:backward if predicate snowski:left rotated ~ 0 on vehicle run function snowski:weapons/sleigh/move {direction:"^1.31094607 ^ ^-1.31094607"}
execute on passengers if predicate snowski:backward if predicate snowski:right rotated ~ 0 on vehicle run function snowski:weapons/sleigh/move {direction:"^-1.31094607 ^ ^-1.31094607"}
execute on passengers if predicate snowski:left unless predicate snowski:forward unless predicate snowski:backward rotated ~ 0 on vehicle run function snowski:weapons/sleigh/move {direction:"^1.31094607 ^ ^"}
execute on passengers if predicate snowski:right unless predicate snowski:forward unless predicate snowski:backward rotated ~ 0 on vehicle run function snowski:weapons/sleigh/move {direction:"^-1.31094607 ^ ^"}
execute store result entity @s Motion[0] double 1 run data get storage snowski:sleigh Motion[0]
execute store result entity @s Motion[2] double 1 run data get storage snowski:sleigh Motion[2]

execute unless entity @s[tag=SleighOffGround] at @s unless entity @p[predicate=snowski:in_sleigh,predicate=snowski:not_moving] run particle minecraft:block{block_state:"minecraft:snow"} ~ ~ ~ 0.1 0 0.1 0.1 5 force
execute unless entity @s[tag=SleighOffGround] at @s unless entity @p[predicate=snowski:in_sleigh,predicate=snowski:not_moving] run particle snowflake ~ ~ ~ 0.1 0 0.1 0.1 2 force
execute unless entity @s[tag=SleighOffGround] at @s unless entity @p[predicate=snowski:in_sleigh,predicate=snowski:not_moving] run playsound minecraft:block.powder_snow.place master @a ~ ~ ~ 1 1

execute at @s unless block ^-1 ^ ^ air unless block ^ ^-1 ^ air unless block ^ ^-2 ^ air run tag @s add SleighJumpSmall
execute at @s unless block ^1 ^ ^ air unless block ^ ^-1 ^ air unless block ^ ^-2 ^ air run tag @s add SleighJumpSmall

execute at @s[tag=!SleighOffGround] if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tag @s add SleighJumpBig
execute at @s[tag=!SleighOffGround] if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tag @s add SleighJumpBig

data modify entity @s[tag=SleighJumpSmall] Motion[1] set value 0.2d
tag @s remove SleighJumpSmall

data modify entity @s[tag=SleighJumpBig,tag=!SleighOffGround] Motion[1] set value 1.3d
execute at @s[tag=SleighJumpBig,tag=!SleighOffGround] run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 0.8
execute at @s[tag=SleighJumpBig,tag=!SleighOffGround] run particle cloud ^ ^ ^ 0 0 0 0.2 1 force
execute at @s[tag=SleighJumpBig,tag=SleighOffGround] run particle snowflake ^ ^-1 ^ 0 0.4 0 0 2 force
tag @s[tag=SleighJumpBig,tag=!SleighOffGround] add SleighOffGround
execute at @s[tag=SleighJumpBig,tag=SleighOffGround,predicate=snowski:on_ground] run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0
execute at @s[tag=SleighJumpBig,tag=SleighOffGround,predicate=snowski:on_ground] run playsound minecraft:block.snow.place master @a ~ ~ ~ 1 0
execute at @s[tag=SleighJumpBig,tag=SleighOffGround,predicate=snowski:on_ground] run playsound minecraft:block.snow.place master @a ~ ~ ~ 1 1
execute at @s[tag=SleighJumpBig,tag=SleighOffGround,predicate=snowski:on_ground] run playsound minecraft:entity.snow_golem.death master @a ~ ~ ~ 1 0.8
execute at @s[tag=SleighJumpBig,tag=SleighOffGround,predicate=snowski:on_ground] run particle minecraft:block{block_state:"minecraft:snow_block"} ~ ~1 ~ 1 1 1 0.1 100 force
scoreboard players add @s[tag=SleighJumpBig,tag=SleighOffGround,predicate=snowski:on_ground] CmdData 300
tag @s[tag=SleighJumpBig,tag=SleighOffGround,predicate=snowski:on_ground] remove SleighOffGround
tag @s[tag=SleighJumpBig,tag=!SleighOffGround] remove SleighJumpBig