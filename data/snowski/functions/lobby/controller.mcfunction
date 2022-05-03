execute if block 138 105 49 minecraft:lectern{Page:4} run scoreboard players set $gameEnd CmdData 6000
execute if block 138 105 49 minecraft:lectern{Page:4} run tellraw @a ["",{"text":"Time changed to: ","color":"dark_aqua"},{"text":"5 Minutes","bold":true,"color":"aqua"}]

execute if block 138 105 49 minecraft:lectern{Page:5} run scoreboard players set $gameEnd CmdData 12000
execute if block 138 105 49 minecraft:lectern{Page:5} run tellraw @a ["",{"text":"Time changed to: ","color":"dark_aqua"},{"text":"10 Minutes","bold":true,"color":"aqua"}]

execute if block 138 105 49 minecraft:lectern{Page:6} run scoreboard players set $gameEnd CmdData 18000
execute if block 138 105 49 minecraft:lectern{Page:6} run tellraw @a ["",{"text":"Time changed to: ","color":"dark_aqua"},{"text":"15 Minutes","bold":true,"color":"aqua"}]

execute if block 138 105 49 minecraft:lectern{Page:7} run scoreboard players set $gameEnd CmdData 24000
execute if block 138 105 49 minecraft:lectern{Page:7} run tellraw @a ["",{"text":"Time changed to: ","color":"dark_aqua"},{"text":"20 Minutes","bold":true,"color":"aqua"}]

execute if block 138 105 49 minecraft:lectern{Page:9} unless score $gameEnd CmdData matches 24000.. run scoreboard players add $gameEnd CmdData 1200
execute if block 138 105 49 minecraft:lectern{Page:9} unless score $gameEnd CmdData matches 24001.. run scoreboard players set $60 CmdData 60
execute if block 138 105 49 minecraft:lectern{Page:9} unless score $gameEnd CmdData matches 24001.. run scoreboard players operation $tempdata CmdData = $gameEnd CmdData
execute if block 138 105 49 minecraft:lectern{Page:9} unless score $gameEnd CmdData matches 24001.. run scoreboard players operation $tempdata CmdData /= $60 CmdData
execute if block 138 105 49 minecraft:lectern{Page:9} unless score $gameEnd CmdData matches 24001.. run scoreboard players operation $tempdata CmdData /= $onesec CmdData
execute if block 138 105 49 minecraft:lectern{Page:9} unless score $gameEnd CmdData matches 24001.. run tellraw @a ["",{"text":"Time changed to: ","color":"dark_aqua"},{"score":{"name":"$tempdata","objective":"CmdData"},"bold":true,"color":"aqua"},{"text":" Minutes","bold":true,"color":"aqua"}]

execute if block 138 105 49 minecraft:lectern{Page:10} if score $gameEnd CmdData matches 6001.. run scoreboard players remove $gameEnd CmdData 1200
execute if block 138 105 49 minecraft:lectern{Page:10} if score $gameEnd CmdData matches 6000.. run scoreboard players set $60 CmdData 60
execute if block 138 105 49 minecraft:lectern{Page:10} if score $gameEnd CmdData matches 6000.. run scoreboard players operation $tempdata CmdData = $gameEnd CmdData
execute if block 138 105 49 minecraft:lectern{Page:10} if score $gameEnd CmdData matches 6000.. run scoreboard players operation $tempdata CmdData /= $60 CmdData
execute if block 138 105 49 minecraft:lectern{Page:10} if score $gameEnd CmdData matches 6000.. run scoreboard players operation $tempdata CmdData /= $onesec CmdData
execute if block 138 105 49 minecraft:lectern{Page:10} if score $gameEnd CmdData matches 6000.. run tellraw @a ["",{"text":"Time changed to: ","color":"dark_aqua"},{"score":{"name":"$tempdata","objective":"CmdData"},"bold":true,"color":"aqua"},{"text":" Minutes","bold":true,"color":"aqua"}]

execute if block 138 105 49 minecraft:lectern{Page:8} run function snowski:lobby/open

execute unless block 138 105 49 minecraft:lectern{Page:0} run data merge block 138 105 49 {Page:0}