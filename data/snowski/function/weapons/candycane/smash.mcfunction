#> Smash. Yep. That's all.
tag @a remove HoldCane
execute as @a if items entity @s weapon.mainhand golden_hoe[custom_model_data=22] run tag @s add HoldCane
effect clear @a[tag=HoldCane] weakness

execute as @a[tag=HoldCane,scores={canesmash=0..}] at @s anchored eyes run particle minecraft:block{block_state:"minecraft:white_concrete"} ^ ^ ^1 0 0 0 0.2 5 force
execute as @a[tag=HoldCane,scores={canesmash=0..}] at @s anchored eyes run particle minecraft:block{block_state:"minecraft:magenta_concrete"} ^ ^ ^1 0 0 0 0.2 5 force
execute as @a[tag=HoldCane,scores={canesmash=0..}] at @s anchored eyes run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.7
execute as @a[tag=HoldCane,scores={canesmash=0..}] at @s anchored eyes run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2
execute as @a[tag=HoldCane,scores={canesmash=0..}] run item replace entity @s weapon.mainhand with air

scoreboard players reset @a[scores={canesmash=0..}] canesmash