scoreboard players enable @a[team=!Lobby] leavegame

execute as @a[team=!Lobby,scores={leavegame=1..}] run scoreboard players set @s nnhealth_max 20
execute as @a[team=!Lobby,scores={leavegame=1..}] run scoreboard players set @s nnhealth_mod 20
execute as @a[team=!Lobby,scores={leavegame=1..}] run tp @s @s
execute as @a[team=!Lobby,scores={leavegame=1..}] run tp @s 137 106 55 -180 0
execute as @a[team=!Lobby,scores={leavegame=1..}] run tag @s remove JoinedGame
execute as @a[team=!Lobby,team=!Spectator,scores={leavegame=1..}] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" left their team","color":"gold"}]
execute as @a[team=Spectator,scores={leavegame=1..}] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" is no longer spectating","color":"gold"}]
execute as @a[team=!Lobby,scores={leavegame=1..}] at @s run playsound minecraft:block.beehive.exit master @a ~ ~ ~ 1 1
execute as @a[team=!Lobby,scores={leavegame=1..}] run team join Lobby

scoreboard players reset @a[team=Lobby] leavegame