#> Knocked players
execute as @a[tag=Knocked,scores={drinkchoco=1..}] run scoreboard players set @s nnhealth_mod 50
execute as @a[tag=Knocked,scores={drinkchoco=1..}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.6 2
execute as @a[tag=Knocked,scores={drinkchoco=1..}] at @s run playsound minecraft:item.honey_bottle.drink master @a ~ ~ ~ 1 2
execute as @a[tag=Knocked,scores={drinkchoco=1..}] at @s run particle minecraft:cloud ~ ~0.5 ~ 0 0.3 0 0.1 10
execute as @a[tag=Knocked,scores={drinkchoco=1..}] at @s run particle minecraft:heart ~ ~0.5 ~ 0.2 0.3 0.2 0.1 5

#> Non-knocked players
execute as @a[tag=!Knocked,scores={drinkchoco=1..}] run scoreboard players add @s nnhealth_mod 14
execute as @a[tag=!Knocked,scores={drinkchoco=1..}] at @s run playsound minecraft:item.honey_bottle.drink master @a ~ ~ ~ 1 2
execute as @a[tag=!Knocked,scores={drinkchoco=1..}] at @s run particle minecraft:heart ~ ~0.5 ~ 0.2 0.3 0.2 0.1 5

#> Reset score & clear bottles
scoreboard players reset @a[scores={drinkchoco=1..}] drinkchoco
clear @a glass_bottle