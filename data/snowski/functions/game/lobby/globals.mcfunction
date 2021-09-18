execute as @a store result score @s bookpain run clear @s written_book 0

item replace entity @a[team=Lobby] hotbar.4 with written_book{display:{Name:'[{"text":"Snowy Skirmish","italic":false,"color":"dark_aqua"},{"text":" "},{"text":"[Info/Wardrobe]","color":"red"}]'},pages:['["",{"text":" \\u0020 \\u0020 "},{"text":"Snowy Skirmish","underlined":true,"color":"dark_aqua"},{"text":"\\n\\n","color":"reset"},{"text":"Welcome to Snowy Skirmish, a temporary event minigame where 2 teams fight each other with snowballs and collect giftboxes to earn points. \\n\\nEquip a fancy hat on the last page of this book!","color":"black"}]','["",{"text":" \\u0020 \\u0020 "},{"text":"Snowy Skirmish","underlined":true,"color":"dark_aqua"},{"text":"\\n\\n","color":"reset"},{"text":"This game also has special weapons in the form of powerups. Powerups can be picked up from red gift boxes.\\n\\nThe team that has the most points at the end of the game wins.","color":"black"}]','["",{"text":"     "},{"text":"Snowy Skirmish","underlined":true,"color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"       ","color":"red"},{"text":"Wardrobe:","underlined":true,"color":"red"},{"text":"\\n\\n","color":"reset"},{"text":"[None]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger hatchange set 1"}},{"text":"\\n","color":"reset"},{"text":"[Santa Hat]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger hatchange set 2"}},{"text":"\\n","color":"reset"},{"text":"[Purple Earmuffs]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger hatchange set 3"}},{"text":"\\n","color":"reset"},{"text":"[Red Nosed Reindeer]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger hatchange set 5"}},{"text":"\\n","color":"reset"},{"text":"[Light Blue Scarf]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger hatchange set with 4"}}]'],title:"Snowy Skirmish",author:"Zeronia"}

execute as @a[team=Lobby,scores={bookpain=2..}] run clear @s written_book


#> Players joining (revoke tag for leavegame)
execute as @a[tag=!JoinedGame] run tag @s remove JoinSpec
execute as @a[tag=!JoinedGame] run tag @s remove JoinGreen
execute as @a[tag=!JoinedGame] run tag @s remove JoinRed
execute as @a[tag=!JoinedGame] run team join Lobby @s
execute as @a[tag=!JoinedGame] run tp @s @s
execute as @a[tag=!JoinedGame] run tp @s 137 106 55 180 0
execute as @a[tag=!JoinedGame] run gamemode adventure @s
execute as @a[tag=!JoinedGame] run clear @s
execute as @a[tag=!JoinedGame] run scoreboard players set @s Health 100
execute as @a[tag=!JoinedGame] run tag @s remove Knocked
execute as @a[tag=!JoinedGame] run scoreboard players reset @s knocktime
execute as @a[tag=!JoinedGame] run function snowski:game/player/playerdeco
execute as @a[tag=!JoinedGame] run tag @s add JoinedGame

execute as @a[scores={LeaveGame=1..}] run tag @s remove JoinedGame
scoreboard players reset @a LeaveGame

#> Spectate
execute as @a[tag=JoinSpec] run gamemode spectator @s
execute as @a[tag=JoinSpec] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" is now spectating.","color":"gold"}]
execute as @a[team=Spectator] run title @s actionbar {"text":"You can quit spectating by flying into the central particle cluster.","color":"gold"}
team join Spectator @a[tag=JoinSpec]
execute as @a[tag=JoinSpec] run tp @s 136 106 23 -180 40
tag @a remove JoinSpec
execute as @e[tag=LeaveSpec] at @s run particle dust 1 0 0 3 ~ ~ ~ 1 1 1 0 1 force @a[team=Spectator]
execute as @e[tag=LeaveSpec] at @s run particle dust 0 1 0 3 ~ ~ ~ 1 1 1 0 1 force @a[team=Spectator]
execute as @a[team=Spectator] at @s if entity @e[tag=LeaveSpec,distance=..2,limit=1] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" is no longer spectating.","color":"gold"}]
execute as @a[team=Spectator] at @s if entity @e[tag=LeaveSpec,distance=..2,limit=1] run tag @s remove JoinedGame



#> Changing hats for players
scoreboard players enable @a[team=Lobby] hatchange
scoreboard players reset @a[team=!Lobby] hatchange
execute as @a[scores={hatchange=1}] run function snowski:game/player/hat/none
execute as @a[scores={hatchange=2}] run function snowski:game/player/hat/santahat
execute as @a[scores={hatchange=3}] run function snowski:game/player/hat/purpmuffs
execute as @a[scores={hatchange=4}] run function snowski:game/player/hat/bluscarf
execute as @a[scores={hatchange=5}] run function snowski:game/player/hat/reindeer
execute as @a[scores={hatchange=6..}] run scoreboard players enable @s hatchange
execute as @a[scores={hatchange=6..}] run scoreboard players set @s hatchange 0