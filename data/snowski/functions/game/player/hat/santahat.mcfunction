scoreboard players set @s hatscore 1
function snowski:game/player/playerdeco
tellraw @s ["",{"text":"[Wardrobe]: ","color":"red"},{"text":"You have equipped: ","color":"dark_purple"},{"text":"Santa Hat","color":"gold"}]
scoreboard players reset @s hatchange