function snowski:game/mode/start

execute as @e[type=item] at @s run tp @s @p
execute as @e[type=item,nbt={Item:{tag:{Powerup:1b}}}] at @s run title @p actionbar {"text":"Powerup Destroyed!","color":"red"}
execute as @e[type=item,nbt={Item:{tag:{Powerup:1b}}}] at @s run playsound minecraft:entity.turtle.egg_break master @p ~ ~ ~ 0.6 2
tag @e[type=item,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] add snowball
kill @e[type=item,tag=!snowball]
execute as @e[type=item,tag=snowball] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=snowball] run data merge entity @s {PickupDelay:0s}

xp set @a 0 points
xp set @a 0 levels

execute unless score $gamestate CmdData matches 0..1 run function snowski:game/tips/tipsystem

#> Meme trailer
execute as @a[scores={hittarget=1..}] run tellraw @s ["","\n",{"text":"Hey, nice! You've found our little secret! ","bold":true,"color":"blue"},"\n",{"text":"[CLICK HERE] ","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://youtu.be/a9EOyyyI4Ns"},"hoverEvent":{"action":"show_text","contents":["Super awesome stuff!!!"]}},{"text":"to watch some quality content!","bold":true,"color":"blue"},"\n",{"text":"Please put a comment on the video so we know you found it! :)","italic":true,"color":"dark_aqua"},"\n"]
execute as @a[scores={hittarget=1..}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.2
execute as @a[scores={hittarget=1..}] run scoreboard players set @s targettimer 81
scoreboard players reset @a[scores={hittarget=1..}] hittarget

#> Notification
execute as @a[tag=!NotifRP] run title @s title [{"text":"Snowy","color":"#43c800","bold":true},{"text":" Skirmish","color":"#FF4E50","bold":true}]
execute as @a[tag=!NotifRP] run title @s subtitle {"text":"v1.1.12","color":"dark_aqua"}
execute as @a[tag=!NotifRP] run tellraw @s ["",{"text":"Welcome to ","color":"dark_aqua"},{"text":"Snowy","bold":true,"color":"#43c800"},{"text":" Skirmish","bold":true,"color":"#FF4E50"},{"text":", ","color":"dark_aqua"},{"selector":"@s","color":"light_gray"},{"text":"!","color":"dark_aqua"},"\n",{"text":"The custom Resource Pack should be enabled automatically.","color":"dark_aqua"},"\n","\n",{"text":"Important: If you do not have the custom Resource Pack enabled yet, you can find the download link by clicking ","color":"red"},{"text":"[HERE]","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://drive.google.com/uc?export=download&id=1PN43JcVx6q_3iifsDcnMxYbALLxrb_So"}},"\n\n",{"text":"It is important to have this Resource Pack enabled!","color":"red"},"\n","\n",{"text":"Happy Holidays and thank you for playing! Enjoy the game!","color":"green"}]
execute as @a[tag=!NotifRP] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
tag @a[tag=!NotifRP] add NotifRP