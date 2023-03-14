execute unless score $gamestate CmdData matches 2 run scoreboard players operation $tempuuid playerUUID = @s UUIDtracker
execute as @e[tag=Snowman,tag=!Melted] if score @s playerUUID = $tempuuid playerUUID run tag @s add sbfound

execute unless score $gamestate CmdData matches 2 as @s[tag=!Knocked,tag=!InVoid] unless entity @a[predicate=snowski:matches_uuid] unless entity @e[tag=sbfound] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" fell out of the map! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"+4 ","color":"gold"}]
execute unless score $gamestate CmdData matches 2 as @s[tag=!Knocked,tag=!InVoid] if entity @a[predicate=snowski:matches_uuid] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was knocked out of the map by ","color":"dark_aqua"},{"selector":"@a[team=Red,limit=1,predicate=snowski:matches_uuid]"},{"text":"! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"+4 ","color":"gold"}]
execute unless score $gamestate CmdData matches 2 as @s[tag=!Knocked,tag=!InVoid] if entity @e[tag=sbfound] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was knocked out of the map by ","color":"dark_aqua"},{"selector":"@e[type=armor_stand,tag=Snowman,limit=1,tag=sbfound]"},{"text":"! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"+4 ","color":"gold"}]

execute unless score $gamestate CmdData matches 2 as @s[tag=Knocked,tag=!InVoid] unless entity @a[predicate=snowski:matches_uuid] unless entity @e[tag=sbfound] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" fell out of the map while already knocked out! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"+6","color":"gold"}]
execute unless score $gamestate CmdData matches 2 as @s[tag=Knocked,tag=!InVoid] if entity @a[predicate=snowski:matches_uuid] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was knocked out of the map by ","color":"dark_aqua"},{"selector":"@a[team=Red,limit=1,predicate=snowski:matches_uuid]"},{"text":" while already knocked out! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"+4 ","color":"gold"}]
execute unless score $gamestate CmdData matches 2 as @s[tag=Knocked,tag=!InVoid] if entity @e[tag=sbfound] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was knocked out of the map by ","color":"dark_aqua"},{"selector":"@e[type=armor_stand,tag=Snowman,limit=1,tag=sbfound]"},{"text":" while already knocked out! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"+4 ","color":"gold"}]

execute unless score $gamestate CmdData matches 2 as @s[tag=!InVoid] run scoreboard players add @s deathcollect 1
execute as @s[tag=!InVoid] run scoreboard players set @s nnhealth 40
execute unless score $gamestate CmdData matches 2 as @s[tag=!InVoid] run scoreboard players add $RedGifts CmdData 4
execute unless score $gamestate CmdData matches 2 as @s[tag=!InVoid,tag=Knocked] run scoreboard players add $RedGifts CmdData 6
execute unless score $gamestate CmdData matches 2 as @s[tag=!InVoid] run summon firework_rocket 101 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute unless score $gamestate CmdData matches 2 as @s[tag=!InVoid,tag=Knocked] run summon firework_rocket 101 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute as @s[tag=!InVoid] run scoreboard players set @s knocktime 180
execute as @s[tag=!InVoid] run scoreboard players set @s nnhealth 1
execute as @s[tag=!InVoid] run tag @s add Knocked
tag @s add InVoid
tag @e[tag=sbfound] remove sbfound