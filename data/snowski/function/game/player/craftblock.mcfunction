execute as @a[scores={craftblock=1..}] run clear @s snow_block
execute as @a[scores={craftblock=1..}] run function snowski:game/player/giveblocks
scoreboard players reset @a craftblock