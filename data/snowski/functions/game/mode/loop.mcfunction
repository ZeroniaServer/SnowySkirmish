function snowski:game/mode/start

execute as @e[type=item] at @s run tp @s @p
execute as @e[type=item,nbt={Item:{tag:{Powerup:1b}}}] at @s run title @p actionbar {"text":"Powerup Destroyed!","color":"red"}
execute as @e[type=item,nbt={Item:{tag:{Powerup:1b}}}] at @s run playsound minecraft:entity.turtle.egg_break master @p ~ ~ ~ 0.6 2
kill @e[type=item]

xp set @a 0 points
xp set @a 0 levels

execute unless score $gamestate CmdData matches 0 run function snowski:game/tips/tipsystem