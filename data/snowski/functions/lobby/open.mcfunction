setblock 137 106 49 minecraft:spruce_sign[rotation=0,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:0b,messages:['{"clickEvent":{"action":"run_command","value":"execute if score $inRed CmdData <= $inGreen CmdData unless score $inRed CmdData matches 6 run tag @s add JoinRed"},"extra":[{"color":"#FFC106","text":"Join "},{"color":"#FF3C3A","text":"Red"}],"text":""}','{"clickEvent":{"action":"run_command","value":"execute if score $inRed CmdData > $inGreen CmdData unless score $inRed CmdData matches 6 run tellraw @s {\\"text\\":\\"Teams imbalanced. Please join the other team.\\",\\"color\\":\\"red\\"}"},"extra":[{"color":"#D4D4D4","text":"0"},{"color":"#D4D4D4","text":"/6"}],"text":""}','{"clickEvent":{"action":"run_command","value":"execute if score $inRed CmdData matches 6 run tellraw @s {\\"text\\":\\"This team is full.\\",\\"color\\":\\"red\\"}"},"text":""}','{"text":""}']},is_waxed:0b}

setblock 139 106 49 minecraft:spruce_sign[rotation=0,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:0b,messages:['{"clickEvent":{"action":"run_command","value":"execute if score $inGreen CmdData <= $inRed CmdData unless score $inGreen CmdData matches 6 run tag @s add JoinGreen"},"extra":[{"color":"#FFC106","text":"Join "},{"color":"#32FF79","text":"Green"}],"text":""}','{"clickEvent":{"action":"run_command","value":"execute if score $inGreen CmdData > $inRed CmdData unless score $inGreen CmdData matches 6 run tellraw @s {\\"text\\":\\"Teams imbalanced. Please join the other team.\\",\\"color\\":\\"red\\"}"},"extra":[{"color":"#D4D4D4","text":"0"},{"color":"#D4D4D4","text":"/6"}],"text":""}','{"clickEvent":{"action":"run_command","value":"execute if score $inGreen CmdData matches 6 run tellraw @s {\\"text\\":\\"This team is full.\\",\\"color\\":\\"red\\"}"},"text":""}','{"text":""}']},is_waxed:0b}

setblock 138 106 48 minecraft:spruce_sign[rotation=0,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:0b,messages:['{"clickEvent":{"action":"run_command","value":"trigger joinspec set 1"},"text":""}','{"color":"#FAD12D","text":"[Spectate]"}','{"text":""}','{"text":""}']},is_waxed:0b}

setblock 138 105 49 air

kill @e[tag=SettingsInstruction]

team remove coloryellow

scoreboard players set $60 CmdData 60
scoreboard players operation $tempdata CmdData = $gameEnd CmdData
scoreboard players operation $tempdata CmdData /= $60 CmdData
scoreboard players operation $tempdata CmdData /= $onesec CmdData

scoreboard players operation $ticks CmdData = $gameEnd CmdData

scoreboard objectives add startgame trigger

tellraw @a ["","\n",{"text":"The game is ready to play!","color":"green"},"\n",{"text":"Game time set to: ","color":"dark_aqua"},{"score":{"name":"$tempdata","objective":"CmdData"},"bold":true,"color":"aqua"},{"text":" Minutes","bold":true,"color":"aqua"},"\n"]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2