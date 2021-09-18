scoreboard players set @s hatscore 3
execute as @s run function snowski:game/player/playerdeco
tellraw @s ["",{"text":"[Wardrobe]: ","color":"red"},{"text":"You have equipped: ","color":"dark_purple"},{"text":"Light Blue Scarf","color":"gold"}]
scoreboard players reset @s hatchange