execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!Knocked,tag=!InVoid] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" fell out of the map! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid] run scoreboard players add @s deathcollect 1
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=Knocked,tag=!InVoid] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" fell out of the map while being knocked out! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"gained ","color":"dark_aqua"},{"text":"6 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
execute as @s[tag=!InVoid] run scoreboard players set @s nnhealth 40
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid] run scoreboard players add $RedGifts CmdData 4
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid,tag=Knocked] run scoreboard players add $RedGifts CmdData 6
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid] run summon firework_rocket 101 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute unless score $gamestate CmdData matches 2 run execute as @s[tag=!InVoid,tag=Knocked] run summon firework_rocket 101 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute as @s[tag=!InVoid] run scoreboard players set @s knocktime 180
execute as @s[tag=!InVoid] run scoreboard players set @s nnhealth 1
execute as @s[tag=!InVoid] run tag @s add Knocked
tag @s add InVoid