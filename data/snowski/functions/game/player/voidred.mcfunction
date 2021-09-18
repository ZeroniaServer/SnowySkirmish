execute unless score $gamestate CmdData matches 1 run execute as @s[tag=!Knocked,tag=!InVoid] run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" fell out of the map! ","color":"dark_aqua"},{"text":"+4","color":"gold"}]
execute unless score $gamestate CmdData matches 1 run execute as @s[tag=Knocked,tag=!InVoid] run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" fell out of the map while being knocked out! ","color":"dark_aqua"},{"text":"+6","color":"gold"}]
execute as @s[tag=!InVoid] run scoreboard players set @s Health 100
execute unless score $gamestate CmdData matches 1 run execute as @s[tag=!InVoid] run scoreboard players add $GreenGifts CmdData 4
execute unless score $gamestate CmdData matches 1 run execute as @s[tag=!InVoid,tag=Knocked] run scoreboard players add $GreenGifts CmdData 2
execute unless score $gamestate CmdData matches 1 run execute as @s[tag=!InVoid] run summon firework_rocket 177 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute unless score $gamestate CmdData matches 1 run execute as @s[tag=!InVoid,tag=Knocked] run summon firework_rocket 177 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute as @s[tag=!InVoid] run scoreboard players set @s knocktime 180
execute as @s[tag=!InVoid] run scoreboard players set @s Health 0
execute as @s[tag=!InVoid] run tag @s add Knocked
tag @s add InVoid