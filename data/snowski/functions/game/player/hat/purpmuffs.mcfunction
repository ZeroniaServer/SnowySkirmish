scoreboard players set @s hatscore 2
function snowski:game/player/playerdeco
tellraw @s ["",{"text":"[Wardrobe]: ","color":"red"},{"text":"You have equipped: ","color":"dark_purple"},{"text":"Purple Ear Muffs","color":"gold"}]
scoreboard players reset @s hatchange