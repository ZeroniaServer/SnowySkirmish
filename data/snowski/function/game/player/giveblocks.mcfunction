scoreboard players set $4 CmdData 4
execute if entity @s[scores={craftblock=1..}] run scoreboard players operation @s snowballammo -= $4 CmdData
execute as @a[scores={craftblock=1..}] run loot give @s loot snowski:craftblock
scoreboard players remove @s craftblock 1
execute if entity @s[scores={craftblock=1..}] run function snowski:game/player/giveblocks
execute unless entity @s[scores={craftblock=1..}] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute unless entity @s[scores={craftblock=1..}] run scoreboard players reset $4 CmdData