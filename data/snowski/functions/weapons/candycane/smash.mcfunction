#> Smash. Yep. That's all.
tag @a[tag=HoldCane] remove HoldCane
tag @a[nbt={SelectedItem:{id:"minecraft:golden_hoe",tag:{CustomModelData:22}}}] add HoldCane
effect clear @a[tag=HoldCane] weakness

execute as @a[tag=HoldCane,scores={canesmash=0..}] at @s anchored eyes run particle block white_concrete ^ ^ ^1 0 0 0 0.2 5 force
execute as @a[tag=HoldCane,scores={canesmash=0..}] at @s anchored eyes run particle block magenta_concrete ^ ^ ^1 0 0 0 0.2 5 force
execute as @a[tag=HoldCane,scores={canesmash=0..}] at @s anchored eyes run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.7
execute as @a[tag=HoldCane,scores={canesmash=0..}] at @s anchored eyes run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2
execute as @a[tag=HoldCane,scores={canesmash=0..}] run item replace entity @s weapon.mainhand with air

scoreboard players reset @a[scores={canesmash=0..}] canesmash