execute as @a[team=!Lobby,team=!Spectator,tag=!Knocked] store result score @s craftsnow run clear @s snow_block 0
execute as @a[scores={craftsnow=1..}] run clear @s snow_block 1
execute as @a[scores={craftsnow=1..}] run give @s clay{display:{Name:'[{"text":"Snow Barricade","italic":false,"color":"dark_aqua","underlined":true}]'},HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]} 2
scoreboard players reset @a craftsnow