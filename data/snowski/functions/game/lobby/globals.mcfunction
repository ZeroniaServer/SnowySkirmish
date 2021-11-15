execute as @a[team=Lobby] unless entity @s[nbt={Inventory:[{id:"minecraft:written_book"}]}] run clear @s written_book
execute as @a[team=Lobby] unless entity @s[nbt={Inventory:[{id:"minecraft:written_book"}]}] run item replace entity @s hotbar.4 with written_book{display:{Name:'[{"text":"Snowy","italic":true,"color":"#43c800"},{"text":" ","italic":false},{"text":"Skirmish","color":"#FF4E50"},{"text":" ","color":"#c80000","italic":false},{"text":"[Info/Wardrobe]","color":"dark_aqua","italic":false,"bold":true}]',Lore:['[{"text":"","italic":false}]','[{"text":"This book contains information","italic":false,"color":"gray"}]','[{"text":"about Snowy Skirmish and how","italic":false,"color":"gray"}]','[{"text":"to play it.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"You can also use the last","italic":false,"color":"gray"}]','[{"text":"page to equip yourself a","italic":false,"color":"gray"}]','[{"text":"fancy hat!","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},pages:['["",{"text":"   Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n\\n","color":"reset"},{"text":"Welcome to Snowy Skirmish!\\nA minigame made to celebrate the holidays.\\nHave a big snowball fight with your friends and collect giftboxes to obtain points and powerups!","color":"dark_aqua"},{"text":"\\n\\n","color":"reset"},{"text":"      ","color":"#c80000"},{"text":"[Wardrobe]","bold":true,"color":"#c80000","clickEvent":{"action":"change_page","value":11}}]','["",{"text":" \\u0020 Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 ","color":"light_purple"},{"text":"How to Play","underlined":true,"color":"light_purple"},{"text":"\\n\\n","color":"reset"},{"text":"At the start of a match, both teams have a short time to build some cover. You can always get more snow blocks by crafting them with snowballs.","color":"dark_aqua"}]','["",{"text":" \\u0020 Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 ","color":"light_purple"},{"text":"How to Play","underlined":true,"color":"light_purple"},{"text":"\\n\\n","color":"reset"},{"text":"When the wall disappears, giftboxes and powerups will spawn, and players need to fight each other with snowballs and powerup items to obtain points.","color":"dark_aqua"}]','["",{"text":"   Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":"          ","color":"light_purple"},{"text":"Points\\n","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"Knockout:","bold":true,"color":"#00E0BB"},{"text":" +4","color":"gold"},{"text":"\\n","color":"reset"},{"text":"Giftbox:","bold":true,"color":"#00E0BB"},{"text":" +1","color":"gold"},{"text":"\\n","color":"reset"},{"text":"Void kill:","bold":true,"color":"#00E0BB"},{"text":" +4","color":"gold"},{"text":"\\n","color":"reset"},{"text":"Knockout+Void:","bold":true,"color":"#00E0BB"},{"text":" +6","color":"gold"},{"text":"\\n\\n","color":"reset"},{"text":"The team with the most points after 10 minutes wins.","color":"dark_aqua"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020","color":"light_purple"},{"text":"Powerups\\n","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"Ice ball:","bold":true,"color":"#00E0BB"},{"text":" A strong ball made of ice. It has a limited range but knocks enemies and destroys enemy Snowman Turrets in 1 hit.","color":"dark_aqua"}]','["",{"text":"   Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":"        ","color":"light_purple"},{"text":"Powerups\\n","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"Snowman Turret:","bold":true,"color":"#00E0BB"},{"text":" Places down a snowman that shoots nearby enemies with bursts of snowballs. Melts over time and can be destroyed using snow and ice balls. ","color":"dark_aqua"}]','["",{"text":" \\u0020 Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020","color":"light_purple"},{"text":"Powerups\\n","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"Blizzard in a Bottle:","bold":true,"color":"#00E0BB"},{"text":" Spawns a snowy cloud that damages and slows down enemies that stand underneath it.","color":"dark_aqua"}]','["",{"text":" \\u0020 Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020","color":"light_purple"},{"text":"Powerups\\n","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"Sleigh:","bold":true,"color":"#00E0BB"},{"text":" Spawns a sleigh that players can use to quickly move around the map. Sleighs will jump when falling from a height. Sleighs take damage over time when nobody controls them and also when they jump.","color":"dark_aqua"}]','["",{"text":" \\u0020 Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020","color":"light_purple"},{"text":"Powerups\\n","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"Candy Cane Smasher:","bold":true,"color":"#00E0BB"},{"text":" Hit an enemy with the Candy Cane Smasher to deal damage and serious knockback to them. ","color":"dark_aqua"}]','["",{"text":" \\u0020 Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020","color":"light_purple"},{"text":"Powerups\\n","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"Hot Chocolate:","bold":true,"color":"#00E0BB"},{"text":" Drinking Hot Chocolate will heal you.\\n\\nCan also be used to revive yourself when you\'re knocked out.","color":"dark_aqua"}]','["",{"text":"   Snowy","bold":true,"italic":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"italic":true,"color":"#FF4E50"},{"text":"\\n","color":"reset"},{"text":"        ","color":"light_purple"},{"text":"Wardrobe","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":" (Click to equip a hat)","italic":true,"color":"gray"},{"text":"\\n\\n","color":"reset"},{"text":"1","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger hatchange set 1"}},{"text":")","color":"gold","clickEvent":{"action":"run_command","value":"/trigger hatchange set 1"}},{"text":" ","color":"reset","clickEvent":{"action":"run_command","value":"/trigger hatchange set 1"}},{"text":"No Hats","color":"#c80000","clickEvent":{"action":"run_command","value":"/trigger hatchange set 1"}},{"text":"\\n","color":"reset"},{"text":"2","bold":true,"color":"#00E0BB","clickEvent":{"action":"run_command","value":"/trigger hatchange set 2"}},{"text":")","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hatchange set 2"}},{"text":" Santa Hat","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hatchange set 2"}},{"text":"\\n","color":"reset"},{"text":"3","bold":true,"color":"#00E0BB","clickEvent":{"action":"run_command","value":"/trigger hatchange set 3"}},{"text":")","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hatchange set 3"}},{"text":" ","color":"reset","clickEvent":{"action":"run_command","value":"/trigger hatchange set 3"}},{"text":"Purple Earmuffs","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hatchange set 3"}},{"text":"\\n","color":"reset"},{"text":"4","bold":true,"color":"#00E0BB","clickEvent":{"action":"run_command","value":"/trigger hatchange set 5"}},{"text":")","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hatchange set 5"}},{"text":" Reindeer","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hatchange set 5"}},{"text":"\\n","color":"reset"},{"text":"5","bold":true,"color":"#00E0BB","clickEvent":{"action":"run_command","value":"/trigger hatchange set 4"}},{"text":")","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hatchange set 4"}},{"text":" ","color":"reset","clickEvent":{"action":"run_command","value":"/trigger hatchange set 4"}},{"text":"Light Blue Scarf","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hatchange set 4"}},{"text":"\\n ","color":"reset"}]'],title:"Snowy Skirmish",author:Zeronia}

#> Failsafe for logging in with no team and JoinedGame tag
execute as @a[team=] run tag @s remove JoinedGame

#> Spawnpoints
spawnpoint @a 137 106 55 -180
setworldspawn 137 106 55
function nnhealth:tick

#> Revoke advancements
advancement revoke @a only snowski:snowball
advancement revoke @a only snowski:iceball
advancement revoke @a only snowski:snowman
advancement revoke @a only snowski:candycane

#> Berry bushes
execute unless block 135 114 56 minecraft:sweet_berry_bush[age=3] run setblock 135 114 56 minecraft:sweet_berry_bush[age=3]
execute unless block 139 113 57 minecraft:sweet_berry_bush[age=3] run setblock 139 113 57 minecraft:sweet_berry_bush[age=3]
execute unless block 133 114 58 minecraft:sweet_berry_bush[age=3] run setblock 133 114 58 minecraft:sweet_berry_bush[age=3]

#> GameID
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] unless score @s GameID = $GameID GameID run tag @s remove JoinedGame

#> Set health
scoreboard players reset @a[team=Lobby] sbdamage
scoreboard players set @a[team=Lobby,scores={nnhealth=..19}] nnhealth_mod 20

#> Players joining (revoke tag for leavegame)
execute as @a[tag=!JoinedGame] run scoreboard players set @s nnhealth_max 20
execute as @a[tag=!JoinedGame] run scoreboard players set @s nnhealth_mod 20
execute as @a[tag=!JoinedGame] run tag @s remove JoinSpec
execute as @a[tag=!JoinedGame] run tag @s remove JoinGreen
execute as @a[tag=!JoinedGame] run tag @s remove JoinRed
execute as @a[tag=!JoinedGame] run tag @s remove IceImpact
execute as @a[tag=!JoinedGame] run team join Lobby @s
execute as @a[tag=!JoinedGame] run tp @s @s
execute as @a[tag=!JoinedGame] run tp @s 137 106 55 180 0
execute as @a[tag=!JoinedGame] run gamemode adventure @s
execute as @a[tag=!JoinedGame] run clear @s
execute as @a[tag=!JoinedGame] run effect clear @s
execute as @a[tag=!JoinedGame] run tag @s remove Knocked
execute as @a[tag=!JoinedGame] run scoreboard players reset @s knocktime
execute as @a[tag=!JoinedGame] run function snowski:game/player/playerdeco
execute as @a[tag=!JoinedGame] run tag @s add JoinedGame

#execute as @a[scores={LeaveGame=1..}] run tag @s remove JoinedGame
scoreboard players reset @a LeaveGame

#> Midgame leaving
function snowski:game/mode/leavegame

#> Spectate
scoreboard players enable @a[team=!Spectator] joinspec
scoreboard players reset @a[team=Spectator] joinspec
execute as @a[scores={joinspec=1..}] run tag @s add JoinSpec
execute as @a[tag=JoinSpec] run gamemode spectator @s
execute as @a[tag=JoinSpec] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" is now spectating","color":"gold"}]
execute as @a[team=Spectator] run title @s actionbar {"text":"You can quit spectating by using /leave.","color":"gold"}
team join Spectator @a[tag=JoinSpec]
execute as @a[tag=JoinSpec] run tp @s 136 106 23 -180 40
execute as @a[tag=JoinSpec] at @s run playsound block.beehive.enter master @s ~ ~ ~ 1 1
tag @a remove JoinSpec
#execute as @e[tag=LeaveSpec] at @s run particle dust 1 0 0 3 ~ ~ ~ 1 1 1 0 1 force @a[team=Spectator]
#execute as @e[tag=LeaveSpec] at @s run particle dust 0 1 0 3 ~ ~ ~ 1 1 1 0 1 force @a[team=Spectator]
#execute as @a[team=Spectator] at @s if entity @e[tag=LeaveSpec,distance=..2,limit=1] run trigger leavegame set 1
scoreboard players reset @a[scores={joinspec=1..}] joinspec


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