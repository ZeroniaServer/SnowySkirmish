function snowski:game/mode/start

execute as @e[type=item] at @s run tp @s @p
execute as @e[type=item,nbt={Item:{tag:{Powerup:1b}}}] at @s run title @p actionbar {"text":"Powerup Destroyed!","color":"red"}
execute as @e[type=item,nbt={Item:{tag:{Powerup:1b}}}] at @s run playsound minecraft:entity.turtle.egg_break master @p ~ ~ ~ 0.6 2
kill @e[type=item]

xp set @a 0 points
xp set @a 0 levels

execute unless score $gamestate CmdData matches 0 run function snowski:game/tips/tipsystem

#> Meme trailer
execute as @a[scores={hittarget=1..}] run tellraw @s ["","\n",{"text":"Hey nice! You have found our little secret! ","bold":true,"color":"blue"},"\n",{"text":"[CLICK HERE] ","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://youtu.be/a9EOyyyI4Ns"},"hoverEvent":{"action":"show_text","contents":["Super awesome stuff!!!"]}},{"text":"to watch some quality content!","bold":true,"color":"blue"},"\n",{"text":"Please put a comment under the video so we know you have found it! :)","italic":true,"color":"dark_aqua"},"\n"]
execute as @a[scores={hittarget=1..}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.2
execute as @a[scores={hittarget=1..}] run scoreboard players set @s targettimer 81
scoreboard players reset @a[scores={hittarget=1..}] hittarget

#> Notification
execute as @a[tag=!NotifRP] run title @s title {"text":"Snowy Skirmish","color":"dark_aqua","bold":true}
execute as @a[tag=!NotifRP] run title @s subtitle {"text":"V1.0.0","color":"green"}
execute as @a[tag=!NotifRP] run tellraw @s ["",{"text":"Welcome to ","color":"dark_aqua"},{"text":"Snowy Skirmish","bold":true,"color":"gray"},{"text":", ","color":"dark_aqua"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_aqua"},"\n",{"text":"The custom Resource Pack should be enabled automatically.","color":"dark_aqua"},"\n","\n",{"text":"Important: If you do not have the custom Resource Pack enabled yet, you can find the download link by clicking ","color":"red"},{"text":"[HERE]","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://drive.google.com/file/d/1q2_3FGPNWumPHCxenVY8tcDWTfu2xak-/view?usp=sharing"}},"\n\n",{"text":"It is important to have this Resource Pack enabled!","color":"red"},"\n","\n",{"text":"Happy Holidays and thank you for playing! Enjoy the game!","color":"green"}]
execute as @a[tag=!NotifRP] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
tag @a[tag=!NotifRP] add NotifRP