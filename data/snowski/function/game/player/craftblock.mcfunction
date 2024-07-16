advancement revoke @s only snowski:craftblock
scoreboard players set $4 CmdData 4
scoreboard players operation @s craftblock *= $4 CmdData
scoreboard players operation @s snowballammo -= @s craftblock
scoreboard players set @s craftblock 0