clone 136 107 57 136 107 57 137 106 49
clone 136 108 57 136 108 57 139 106 49
clone 136 109 57 136 109 57 138 106 48

setblock 138 105 49 air

kill @e[tag=SettingsInstruction]

team remove coloryellow

scoreboard players set $60 CmdData 60
scoreboard players operation $tempdata CmdData = $gameEnd CmdData
scoreboard players operation $tempdata CmdData /= $60 CmdData
scoreboard players operation $tempdata CmdData /= $onesec CmdData

tellraw @a ["","\n",{"text":"The game is ready to play!","color":"green"},"\n",{"text":"Game time set to: ","color":"dark_aqua"},{"score":{"name":"$tempdata","objective":"CmdData"},"bold":true,"color":"aqua"},{"text":" Minutes","bold":true,"color":"aqua"},"\n"]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2