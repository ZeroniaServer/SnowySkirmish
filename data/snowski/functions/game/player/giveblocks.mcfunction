execute as @s[scores={giveblocks=1..}] run give @s clay{display:{Name:'[{"text":"Snow Barricade","italic":false,"color":"dark_aqua","underlined":true}]'},HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]} 1
execute as @s[scores={giveblocks=1..}] run scoreboard players remove @s giveblocks 1
execute as @s[scores={giveblocks=1..}] run function snowski:game/player/giveblocks

scoreboard players reset @a[scores={giveblocks=-1000..0}] giveblocks