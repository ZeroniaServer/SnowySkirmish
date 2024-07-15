scoreboard players set @s hatscore 4
function snowski:game/player/playerdeco
tellraw @s ["",{"text":"[Wardrobe]: ","color":"red"},{"text":"You have equipped: ","color":"dark_purple"},{"text":"Red Nosed Reindeer","color":"gold"}]
scoreboard players reset @s hatchange