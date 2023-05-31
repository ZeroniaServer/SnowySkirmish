#TODO: Convert to trigger. We're currently relying on a sign to run commands for the player. Which on servers may not work without operator perms.

execute if score $gamestate CmdData matches 0 run fill 102 81 7 102 82 7 blue_ice
execute if score $gamestate CmdData matches 0 run fill 97 85 5 96 85 7 blue_ice replace air
execute if score $gamestate CmdData matches 0 run fill 170 82 7 170 83 7 blue_ice
execute if score $gamestate CmdData matches 0 run fill 175 86 9 176 86 7 blue_ice replace air
execute if score $gamestate CmdData matches 0 run setblock 101 82 7 crimson_wall_sign[facing=west]
execute if score $gamestate CmdData matches 0 run data modify block 101 82 7 front_text.messages[0] set value '{"text":" ","clickEvent":{"action":"run_command","value":"trigger startgame set 48937"}}'
execute if score $gamestate CmdData matches 0 run data modify block 101 82 7 front_text.messages[1] set value '{"text":"[Start Game]","color":"#FFC106"}'
execute if score $gamestate CmdData matches 0 run setblock 171 83 7 warped_wall_sign[facing=east]
execute if score $gamestate CmdData matches 0 run data modify block 171 83 7 front_text.messages[0] set value '{"text":" ","clickEvent":{"action":"run_command","value":"trigger startgame set 48937"}}'
execute if score $gamestate CmdData matches 0 run data modify block 171 83 7 front_text.messages[1] set value '{"text":"[Start Game]","color":"#FFC106"}'


#> Joining teams
execute store result score $inGreen CmdData if entity @a[team=Green]
execute store result score $inRed CmdData if entity @a[team=Red]
execute if score $maxTeam CmdData matches ..0 run scoreboard players set $maxTeam CmdData 6
scoreboard players operation $maxPlayers CmdData = $maxTeam CmdData
scoreboard players set $2 CmdData 2
scoreboard players operation $maxPlayers CmdData *= $2 CmdData
scoreboard players reset $2 CmdData
data modify block 139 106 49 front_text.messages[0] set value '[{"text":"","clickEvent":{"action":"run_command","value":"execute if score $inGreen CmdData <= $inRed CmdData unless score $inGreen CmdData >= $maxTeam CmdData run tag @s add JoinGreen"}},{"text":"Join ","color":"#FFC106"},{"text":"Green","color":"#32FF79"}]'
data modify block 139 106 49 front_text.messages[1] set value '[{"text":"","clickEvent":{"action":"run_command","value":"execute if score $inGreen CmdData > $inRed CmdData unless score $inGreen CmdData >= $maxTeam CmdData run tellraw @s {\\"text\\":\\"Teams imbalanced. Please join the other team.\\",\\"color\\":\\"red\\"}"}},{"score":{"name":"$inGreen","objective":"CmdData"},"color":"#D4D4D4"},{"text":"/","color":"#D4D4D4"},{"score":{"name":"$maxTeam","objective":"CmdData"},"color":"#D4D4D4"}]'
data modify block 139 106 49 front_text.messages[2] set value '{"text":"","clickEvent":{"action":"run_command","value":"execute if score $inGreen CmdData >= $maxTeam CmdData run tellraw @s {\\"text\\":\\"This team is full.\\",\\"color\\":\\"red\\"}"}}'
data modify block 137 106 49 front_text.messages[0] set value '[{"text":"","clickEvent":{"action":"run_command","value":"execute if score $inRed CmdData <= $inGreen CmdData unless score $inRed CmdData >= $maxTeam CmdData run tag @s add JoinRed"}},{"text":"Join ","color":"#FFC106"},{"text":"Red","color":"#FF3C3A"}]'
data modify block 137 106 49 front_text.messages[1] set value '[{"text":"","clickEvent":{"action":"run_command","value":"execute if score $inRed CmdData > $inGreen CmdData unless score $inRed CmdData >= $maxTeam CmdData run tellraw @s {\\"text\\":\\"Teams imbalanced. Please join the other team.\\",\\"color\\":\\"red\\"}"}},{"score":{"name":"$inRed","objective":"CmdData"},"color":"#D4D4D4"},{"text":"/","color":"#D4D4D4"},{"score":{"name":"$maxTeam","objective":"CmdData"},"color":"#D4D4D4"}]'
data modify block 137 106 49 front_text.messages[2] set value '{"text":"","clickEvent":{"action":"run_command","value":"execute if score $inRed CmdData >= $maxTeam CmdData run tellraw @s {\\"text\\":\\"This team is full.\\",\\"color\\":\\"red\\"}"}}'

execute as @a[tag=JoinGreen] run tp @s @s
execute as @a[tag=JoinGreen] run team join Green @s
execute as @a[tag=JoinGreen] store result score @s GameID run scoreboard players get $GameID GameID
execute as @a[tag=JoinGreen] run clear @s
execute as @a[tag=JoinGreen] run function snowski:game/player/playerdeco
execute as @a[tag=JoinGreen] run scoreboard players set @s nnhealth_max 40
execute as @a[tag=JoinGreen] run scoreboard players set @s nnhealth_mod 40
execute as @a[tag=JoinGreen] run tp @s 174 82 7 90 0
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" joined the Green team","color":"dark_green"}]
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" joined the Green team","color":"dark_green"}]
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2 run item replace entity @s hotbar.4 with clay{display:{Name:'[{"text":"Snow Barricade","italic":false,"color":"dark_aqua","underlined":true}]'},HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]} 1
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2 run item modify entity @s hotbar.4 snowski:setblockcount
execute as @a[tag=JoinGreen] run tellraw @s ["",{"text":"You may leave the game by clicking the ","italic":true,"color":"gold"},{"text":"icon in your inventory","italic":true,"underlined":true,"color":"yellow"},{"text":"!","italic":true,"color":"gold"},"\n"]
execute as @a[tag=JoinGreen] unless score $gamestate CmdData matches 0 unless score $gamestate CmdData matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" joined the Green team. A late arrival, unfortunately","color":"dark_green"}]
execute as @a[tag=JoinGreen] run item replace entity @s inventory.13 with diamond_hoe{CustomModelData:5,ExitIcon:1b,HideFlags:2,display:{Name:'[{"text":"[Leave Game]","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click on this icon to leave the game!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']}}
execute as @a[tag=JoinGreen] run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,display:{color:5439325},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:3}
execute as @a[tag=JoinGreen] run item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,display:{color:4868682},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:3}
execute as @a[tag=JoinGreen] run item replace entity @s armor.feet with leather_boots{Unbreakable:1b,display:{color:4868682},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:3}
execute as @a[tag=JoinGreen] at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 1 1

execute as @a[tag=JoinRed] run tp @s @s
execute as @a[tag=JoinRed] run team join Red @s
execute as @a[tag=JoinRed] store result score @s GameID run scoreboard players get $GameID GameID
execute as @a[tag=JoinRed] run clear @s
execute as @a[tag=JoinRed] run function snowski:game/player/playerdeco
execute as @a[tag=JoinRed] run scoreboard players set @s nnhealth_max 40
execute as @a[tag=JoinRed] run scoreboard players set @s nnhealth_mod 40
execute as @a[tag=JoinRed] run tp @s 98 81 7 -90 0
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" joined the Red team","color":"dark_red"}]
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" joined the Red team","color":"dark_red"}]
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 2 run item replace entity @s hotbar.4 with clay{display:{Name:'[{"text":"Snow Barricade","italic":false,"color":"dark_aqua","underlined":true}]'},HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]} 1
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 2 run item modify entity @s hotbar.4 snowski:setblockcount
execute as @a[tag=JoinRed] run tellraw @s ["",{"text":"You may leave the game by clicking the ","italic":true,"color":"gold"},{"text":"icon in your inventory","italic":true,"underlined":true,"color":"yellow"},{"text":"!","italic":true,"color":"gold"},"\n"]
execute as @a[tag=JoinRed] unless score $gamestate CmdData matches 0 unless score $gamestate CmdData matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" joined the Red team. A late arrival, unfortunately","color":"dark_red"}]
execute as @a[tag=JoinRed] run item replace entity @s inventory.13 with diamond_hoe{CustomModelData:5,ExitIcon:1b,HideFlags:2,display:{Name:'[{"text":"[Leave Game]","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click on this icon to leave the game!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']}}
execute as @a[tag=JoinRed] run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,display:{color:16722217},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:3}
execute as @a[tag=JoinRed] run item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,display:{color:4868682},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:3}
execute as @a[tag=JoinRed] run item replace entity @s armor.feet with leather_boots{Unbreakable:1b,display:{color:4868682},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:3}
execute as @a[tag=JoinRed] at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 1 1

tag @a remove JoinGreen
tag @a remove JoinRed

fill 184 84 -17 136 89 31 air replace clay
fill 135 84 31 87 89 -17 air replace clay

scoreboard players reset @a[team=!Red,team=!Green] GameID

#> Actually start a game
execute if score $gamestate CmdData matches 0 run scoreboard players enable @a[team=!Lobby,team=!Spectator] startgame
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] as @a[scores={startgame=48937},limit=1,sort=random] run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" started the match!","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] as @a[scores={startgame=48937},limit=1,sort=random] run setblock 101 82 7 air
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] as @a[scores={startgame=48937},limit=1,sort=random] run setblock 171 83 7 air
execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] as @a[scores={startgame=48937}] run tellraw @s {"text":"Unable to start a match! Both teams need at least 1 player!","color":"red"}
execute if score $gamestate CmdData matches 0 unless entity @a[team=Red] as @a[scores={startgame=48937}] run tellraw @s {"text":"Unable to start a match! Both teams need at least 1 player!","color":"red"}
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] if entity @a[scores={startgame=48937}] run scoreboard players set $gamestate CmdData 1
execute if score $gamestate CmdData matches 0 run scoreboard players reset @a[team=!Green,team=!Red] startgame
execute if score $gamestate CmdData matches 0 as @a unless entity @s[scores={startgame=0}] run scoreboard players reset @s startgame
execute if score $gamestate CmdData matches 1 run scoreboard objectives remove startgame
execute if score $gamestate CmdData matches 1 if entity @a[team=Green] unless entity @a[team=Red] run tellraw @a {"text":"Countdown cancelled! Invalid amount of players in teams!","color":"red"}
execute if score $gamestate CmdData matches 1 if entity @a[team=Green] unless entity @a[team=Red] run scoreboard objectives add startgame trigger
execute if score $gamestate CmdData matches 1 if entity @a[team=Green] unless entity @a[team=Red] run scoreboard players set $gamestate CmdData 0
execute if score $gamestate CmdData matches 1 unless entity @a[team=Green] if entity @a[team=Red] run tellraw @a {"text":"Countdown cancelled! Invalid amount of players in teams!","color":"red"}
execute if score $gamestate CmdData matches 1 unless entity @a[team=Green] if entity @a[team=Red] run scoreboard objectives add startgame trigger
execute if score $gamestate CmdData matches 1 unless entity @a[team=Green] if entity @a[team=Red] run scoreboard players set $gamestate CmdData 0

execute if score $gamestate CmdData matches 0 run function snowski:game/mode/killentities
execute if score $gamestate CmdData matches 0 run scoreboard players reset $gametime CmdData
execute if score $gamestate CmdData matches 0 run bossbar set starttime players
execute unless score $gamestate CmdData matches 0 run scoreboard players add $gametime CmdData 1

scoreboard players set $onesec CmdData 20
scoreboard players set $quickstart CmdData 10
execute if score $gamestate CmdData matches 1 run scoreboard players add $countsec CmdData 1
execute if score $gametime CmdData matches 1 run scoreboard players set $tensec CmdData 30
execute if score $gamestate CmdData matches 1 unless score $tensec CmdData <= $quickstart CmdData unless entity @a[team=Lobby] run scoreboard players set $tensec CmdData 10
execute if score $gamestate CmdData matches 1 unless score $tensec CmdData <= $quickstart CmdData if entity @a[team=Lobby] unless score $inTeams CmdData >= $maxPlayers CmdData run scoreboard players set $tensec CmdData 10
execute if score $gametime CmdData matches 1 run bossbar add starttime ["",{"text":"Game starting in: ","color":"white"},{"score":{"name":"$tensec","objective":"CmdData"},"color":"dark_aqua"}]
execute if score $gametime CmdData matches 1 run bossbar set starttime max 10
execute if score $gametime CmdData matches 1 run bossbar set starttime style notched_10
execute if score $gamestate CmdData matches 1 store result bossbar starttime value run scoreboard players get $tensec CmdData
execute if score $gamestate CmdData matches 1 run bossbar set starttime name ["",{"text":"Game starting in: ","color":"white"},{"score":{"name":"$tensec","objective":"CmdData"},"color":"dark_aqua"}]
execute if score $gamestate CmdData matches 1 run bossbar set starttime players @a
execute if score $countsec CmdData >= $onesec CmdData run scoreboard players remove $tensec CmdData 1
execute if score $countsec CmdData >= $onesec CmdData unless score $tensec CmdData >= $quickstart CmdData if score $tensec CmdData matches 4..10 as @a at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0
execute if score $countsec CmdData >= $onesec CmdData unless score $tensec CmdData >= $quickstart CmdData if score $tensec CmdData matches 3 as @a at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0.6
execute if score $countsec CmdData >= $onesec CmdData unless score $tensec CmdData >= $quickstart CmdData if score $tensec CmdData matches 2 as @a at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0.7
execute if score $countsec CmdData >= $onesec CmdData unless score $tensec CmdData >= $quickstart CmdData if score $tensec CmdData matches 1 as @a at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0.8
execute if score $countsec CmdData >= $onesec CmdData run scoreboard players reset $countsec CmdData
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run scoreboard players set $gametime CmdData 2
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run bossbar remove starttime
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run fill 170 82 7 171 83 7 air destroy
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run fill 175 86 9 176 86 7 air replace blue_ice
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run fill 102 81 7 101 82 7 air destroy
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run fill 97 85 5 96 85 7 air replace blue_ice

#> Spawn Protection
execute as @e[tag=RedCampfire] at @s run kill @e[tag=GreenBall,distance=..5]
execute as @e[tag=RedCampfire] at @s run kill @e[tag=GreenArrow,distance=..5]
execute as @e[tag=GreenCampfire] at @s run kill @e[tag=RedBall,distance=..5]
execute as @e[tag=GreenCampfire] at @s run kill @e[tag=RedArrow,distance=..5]
execute as @e[tag=RedCampfire] at @s run kill @e[tag=GreenIBall,distance=..5]
execute as @e[tag=RedCampfire] at @s run kill @e[tag=GreenIArrow,distance=..5]
execute as @e[tag=GreenCampfire] at @s run kill @e[tag=RedIBall,distance=..5]
execute as @e[tag=GreenCampfire] at @s run kill @e[tag=RedIArrow,distance=..5]
execute as @e[tag=GreenCampfire] at @s run kill @e[tag=RedBBall,distance=..5]
execute as @e[tag=GreenCampfire] at @s run kill @e[tag=RedBBArrow,distance=..5]
execute as @e[tag=GreenCampfire] at @s run kill @e[tag=RedBlizzardCloud,distance=..5]
execute as @e[tag=RedCampfire] at @s run kill @e[tag=GreenBBall,distance=..5]
execute as @e[tag=RedCampfire] at @s run kill @e[tag=GreenBBArrow,distance=..5]
execute as @e[tag=RedCampfire] at @s run kill @e[tag=GreenBlizzardCloud,distance=..5]
execute as @e[tag=RedCampfire] at @s run scoreboard players set @e[tag=GreenSnowman,distance=..8,scores={CmdData=..279}] CmdData 280
execute as @e[tag=GreenCampfire] at @s run scoreboard players set @e[tag=RedSnowman,distance=..8,scores={CmdData=..279}] CmdData 280
execute unless score $gamestate CmdData matches 0 run fill 96 85 7 97 88 5 air replace clay
execute unless score $gamestate CmdData matches 0 run fill 104 81 7 100 82 7 air replace clay
execute unless score $gamestate CmdData matches 0 run fill 176 86 7 175 88 9 air replace clay
execute unless score $gamestate CmdData matches 0 run fill 168 82 7 172 83 7 air replace clay

#> Preparation time
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run bossbar add preptime ["",{"text":"Preparation Time!","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run bossbar set preptime max 650
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run bossbar set preptime players @a
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run kill @e[tag=ElfGift]
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run kill @e[tag=PowerGift]
execute store result bossbar preptime value run scoreboard players get $gametime CmdData
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run item replace entity @a[team=!Lobby,team=!Spectator,team=!Developer] hotbar.4 with clay{display:{Name:'[{"text":"Snow Barricade","italic":false,"color":"dark_aqua","underlined":true}]'},HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]} 1
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run item modify entity @a[team=!Lobby,team=!Spectator,team=!Developer] hotbar.4 snowski:setblockcount

execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run title @a title {"text":"Preparation Time!","color":"dark_aqua"}
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run title @a subtitle {"text":"Build some cover.","color":"blue"}
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run function snowski:game/tips/createset
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run scoreboard players set $SendTip Cmddata 900

execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run place template skirmishwall1 135 57 -18
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run place template skirmishwall2 135 57 30
execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run fill 133 55 -18 141 60 -18 barrier

execute if score $gamestate CmdData matches 1 if score $tensec CmdData matches 0 run scoreboard players set $gamestate CmdData 2


#> Battle time
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run bossbar add scorebar ["",{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" || ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run bossbar set scorebar max 1
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run bossbar set scorebar value 1
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run fill 135 57 -17 137 89 31 air replace snow_block
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run fill 135 57 -17 137 89 31 air replace powder_snow
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run fill 136 57 -17 136 89 31 air replace powder_snow
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run fill 136 57 -17 136 89 31 air replace blue_ice
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run fill 136 57 -17 136 89 31 air replace packed_ice
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run particle minecraft:block packed_ice 136 75 7 1 3 5 0 300
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run particle minecraft:snowflake 136 75 7 1 3 5 0 300
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 73 11 ice
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 73 9 ice
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 73 3 blue_ice
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 73 2 minecraft:packed_ice
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 73 1 blue_ice
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 63 26 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 63 25 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 63 24 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 137 62 25 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 62 26 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 135 62 25 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 62 24 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 62 25 minecraft:sea_lantern
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 61 25 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 60 25 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 64 25 minecraft:black_terracotta
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 64 -1 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 64 -2 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 64 0 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 63 -1 minecraft:sea_lantern
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 63 0 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 63 -2 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 62 -1 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 61 -1 minecraft:lime_stained_glass
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run setblock 136 65 -1 minecraft:black_terracotta
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run fill 132 84 32 140 92 32 barrier
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run fill 132 82 -18 141 91 -18 barrier


execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run clear @a clay
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run bossbar remove preptime
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run title @a title {"text":"Battle Time!","color":"dark_red"}
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run scoreboard players operation $ticks CmdData = $gameEnd CmdData
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run scoreboard players operation $ticks CmdData -= $gametime CmdData
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run scoreboard players add $ticks CmdData 20
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run title @a subtitle {"text":"Collect gifts and eliminate enemies!","color":"red"}
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.4
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run scoreboard players set $spawnElfs CmdData 6
execute if score $gamestate CmdData matches 2 if score $gametime CmdData matches 650 run scoreboard players set $gamestate CmdData 3

execute if score $gamestate CmdData matches 3 run bossbar set scorebar players @a
execute if score $gamestate CmdData matches 2.. run function snowski:game/mode/timer
execute if score $gamestate CmdData matches 3 if score $RedGifts CmdData = $GreenGifts CmdData run bossbar set scorebar color white
execute if score $gamestate CmdData matches 3 if score $RedGifts CmdData > $GreenGifts CmdData run bossbar set scorebar color red
execute if score $gamestate CmdData matches 3 if score $RedGifts CmdData < $GreenGifts CmdData run bossbar set scorebar color green

#> Spawn elfs
execute if score $gamestate CmdData matches 3 store result score $elfCount CmdData if entity @e[tag=ElfGift]
execute if score $gamestate CmdData matches 3 if score $elfCount CmdData < $elfMax CmdData run scoreboard players set $spawnElfs CmdData 1
execute if score $gamestate CmdData matches 3 run scoreboard players add $keepCount CmdData 1
execute if score $gamestate CmdData matches 3 if score $keepCount CmdData >= $elfspawn CmdData if score $spawnElfs CmdData matches 1 run function snowski:game/mode/elf/spawn
execute if score $gamestate CmdData matches 3 if score $keepCount CmdData >= $elfspawn CmdData if score $spawnElfs CmdData matches 1 run scoreboard players set $spawnElfs CmdData 0
execute if score $gamestate CmdData matches 3 if score $keepCount CmdData >= $elfspawn CmdData run scoreboard players reset $keepCount CmdData


#> Gift collection
execute as @e[tag=ElfGift] at @s if block ~ ~-0.1 ~ air run particle block light_blue_wool ~ ~ ~ 0.1 0.1 0.1 0.1 5 force
execute as @e[tag=ElfGift] at @s if block ~ ~-0.1 ~ air run kill @s

execute as @a[team=Green,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run scoreboard players add $GreenGifts CmdData 1
execute as @a[team=Green,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run scoreboard players add @s giftcollect 1
execute as @a[team=Green,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 2
execute as @a[team=Green,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] at @e[tag=ElfGift,distance=..1] run particle block light_blue_wool ~ ~ ~ 0 0 0 0.1 5 force
execute as @a[team=Green,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] at @e[tag=ElfGift,distance=..1] run particle block yellow_wool ~ ~ ~ 0 0 0 0.1 2 force
execute as @a[team=Green,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run summon firework_rocket 177 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute as @a[team=Green,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run kill @e[tag=ElfGift,limit=1,distance=..1]

execute as @a[team=Red,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run scoreboard players add $RedGifts CmdData 1
execute as @a[team=Red,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run scoreboard players add @s giftcollect 1
execute as @a[team=Red,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 2
execute as @a[team=Red,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] at @e[tag=ElfGift,distance=..1] run particle block light_blue_wool ~ ~ ~ 0 0 0 0.1 5 force
execute as @a[team=Red,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] at @e[tag=ElfGift,distance=..1] run particle block yellow_wool ~ ~ ~ 0 0 0 0.1 2 force
execute as @a[team=Red,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run summon firework_rocket 101 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute as @a[team=Red,tag=!Knocked] at @s if entity @e[tag=ElfGift,distance=..1] run kill @e[tag=ElfGift,limit=1,distance=..1]

#> Powerup spawning
execute if score $gamestate CmdData matches 3 store result score $PowerGifts CmdData if entity @e[tag=PowerGift]
execute unless score $PowerGifts CmdData = $powerupMax CmdData if score $gamestate CmdData matches 3 run scoreboard players add $powerupspawn2 CmdData 1
execute if score $gamestate CmdData matches 3 if score $powerupspawn2 CmdData >= $powerupspawn CmdData run function snowski:game/mode/powerup/spawn
execute if score $gamestate CmdData matches 3 if score $powerupspawn2 CmdData >= $powerupspawn CmdData run scoreboard players set $powerupspawn2 CmdData 0

#> Void Fall
tag @a remove InVoid
execute as @a[team=Green] at @s if entity @s[y=50,dy=-255] run function snowski:game/player/voidgreen
execute as @a[team=Red] at @s if entity @s[y=50,dy=-255] run function snowski:game/player/voidred

#> Spread fireworks
execute as @e[tag=PointsFW] at @s run spreadplayers ~ ~ 1 10 false @s
scoreboard players add @e[tag=PointsFW] CmdData 1
tag @e[tag=PointsFW,scores={CmdData=5..}] remove PointsFW

#> Game end
execute if score $gamestate CmdData matches 2.. unless entity @a[team=Green] run function snowski:game/mode/end
execute if score $gamestate CmdData matches 2.. unless entity @a[team=Red] run function snowski:game/mode/end
scoreboard players set $200 CmdData 200
scoreboard players operation $fcountdown CmdData = $gameEnd CmdData
scoreboard players operation $fcountdown CmdData -= $200 CmdData
execute if score $gametime CmdData >= $fcountdown CmdData run scoreboard players add $countsec CmdData 1
execute if score $gametime CmdData = $fcountdown CmdData run scoreboard players set $tensec CmdData 10
execute if score $gametime CmdData >= $fcountdown CmdData run bossbar set endtime max 10
execute if score $gametime CmdData = $fcountdown CmdData run bossbar set endtime style notched_10
execute if score $gametime CmdData >= $fcountdown CmdData run bossbar set endtime players @a
execute store result bossbar endtime value run scoreboard players get $tensec CmdData

execute if score $gametime CmdData >= $gameEnd CmdData run function snowski:game/mode/end