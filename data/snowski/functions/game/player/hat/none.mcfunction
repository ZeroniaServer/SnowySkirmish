scoreboard players reset @s hatscore
execute as @s run item replace entity @s armor.head with air
tellraw @s ["",{"text":"[Wardrobe]: ","color":"red"},{"text":"You have equipped: ","color":"dark_purple"},{"text":"Nothing","color":"gold"}]
scoreboard players reset @s hatchange