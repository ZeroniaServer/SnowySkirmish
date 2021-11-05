scoreboard players reset @s hatscore
item replace entity @s armor.head with air
tellraw @s ["",{"text":"[Wardrobe]: ","color":"red"},{"text":"You have equipped: ","color":"dark_purple"},{"text":"Nothing","color":"gold"}]
scoreboard players reset @s hatchange