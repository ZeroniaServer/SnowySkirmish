execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!Knocked,tag=!InVoid] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" fell out of the map! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"+4","color":"gold"}]
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid] run scoreboard players add @s deathcollect 1
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=Knocked,tag=!InVoid] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" fell out of the map while being knocked out! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"+6","color":"gold"}]
execute as @s[tag=!InVoid] run scoreboard players set @s nnhealth 40
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid] run scoreboard players add $GreenGifts CmdData 4
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid,tag=Knocked] run scoreboard players add $GreenGifts CmdData 6
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid] run summon firework_rocket 177 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid,tag=Knocked] run summon firework_rocket 177 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute as @s[tag=!InVoid] run scoreboard players set @s knocktime 180
execute as @s[tag=!InVoid] run scoreboard players set @s nnhealth 1
execute as @s[tag=!InVoid] run tag @s add Knocked
tag @s add InVoid