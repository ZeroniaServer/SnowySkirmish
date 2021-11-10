execute as @a[predicate=snowski:show_credits,limit=1,sort=random] run scoreboard players add $LobbyCred CmdData 1

execute if score $LobbyCred CmdData matches 60 at @e[tag=Zeronia] run particle minecraft:explosion ~ ~1 ~ 0.2 0.4 0.2 0 5 force
execute if score $LobbyCred CmdData matches 60 at @e[tag=CubeKrowd] run particle minecraft:explosion ~ ~1 ~ 0.2 0.4 0.2 0 5 force

execute if score $LobbyCred CmdData matches 60 at @e[tag=Zeronia] run playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 1
execute if score $LobbyCred CmdData matches 60 at @e[tag=CubeKrowd] run playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 0

execute if score $LobbyCred CmdData matches 60 run data merge entity @e[tag=Zeronia,limit=1] {CustomNameVisible:0}
execute if score $LobbyCred CmdData matches 60 run data merge entity @e[tag=CubeKrowd,limit=1] {CustomNameVisible:0}

execute if score $LobbyCred CmdData matches 60 as @e[tag=Zeronia] at @s run tp @s ~ ~-5 ~
execute if score $LobbyCred CmdData matches 60 as @e[tag=CubeKrowd] at @s run tp @s ~ ~-5 ~



## TELEPORTS
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=CreditsAS] 141 107 64
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=YZEROCred] 144 108 73 -180 0
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 144 107 72 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Game Concept\""}
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 144 106.8 72 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Models, Textures & Sounds\""}
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 144 106.6 72 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Game Developer\""}
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 146 107 70 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Game Developer\""}
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 146 106.8 70 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Playtester\""}
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=EvCred] 146 108 71 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=BlockyCred] 148 108 70 -180 0
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 148 107 69 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Trailer Director\""}
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 148 106.8 69 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Playtester\""}
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=ChronosCred] 144 111 73 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=CatCred] 146 111 71 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=ProzCred] 148 111 70 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=TrekCred] 144 114 73 -180 0
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 144 113 72 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Map Builder\""}
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=JohnCred] 140 108 73 -180 0
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 140 107 72 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Game Developer\""}
execute if score $LobbyCred CmdData matches 60 run summon area_effect_cloud 140 106.8 72 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Playtester\""}
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=TallCred] 138 108 71 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=KurCred] 136 108 70 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=LPCred] 140 111 73 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=ZorCred] 138 111 71 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=JansCred] 136 111 70 -180 0
execute if score $LobbyCred CmdData matches 60 run tp @e[tag=JaneCred] 140 114 73 -180 0
execute if score $LobbyCred CmdData matches 60 as @e[tag=CreditsAS] run data merge entity @s {CustomNameVisible:1}
execute if score $LobbyCred CmdData matches 60 as @e[tag=CreditsAS,tag=!YZEROCred,tag=!EvCred,tag=!BlockyCred,tag=!JohnCred,tag=!TrekCred] at @s run summon area_effect_cloud ~ ~-1 ~-1 {Duration:2000000000,Tags:["CredText"],CustomNameVisible:1,CustomName:"\"Playtester\""}

execute if score $LobbyCred CmdData matches 60.. as @e[tag=ZSCred] at @s run particle dust 1 0 0 1 ~ ~-0.2 ~ 0.2 0.1 0.2 0 1 force
execute if score $LobbyCred CmdData matches 60.. as @e[tag=ZSCred] at @s run particle dust 0 1 0 1 ~ ~-0.2 ~ 0.2 0.1 0.2 0 1 force

execute if score $LobbyCred CmdData matches 60.. as @e[tag=CKCred] at @s run particle dust 1 1 0 1 ~ ~-0.2 ~ 0.2 0.1 0.2 0 1 force
execute if score $LobbyCred CmdData matches 60.. as @e[tag=CKCred] at @s run particle dust 0 1 2 1 ~ ~-0.2 ~ 0.2 0.1 0.2 0 1 force
##



#Undo

execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] as @e[tag=Zeronia] at @s run particle minecraft:explosion ~ ~6 ~ 0.2 0.4 0.2 0 5 force
execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] as @e[tag=CubeKrowd] at @s run particle minecraft:explosion ~ ~6 ~ 0.2 0.4 0.2 0 5 force
execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] as @e[tag=Zeronia] at @s run playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 1
execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] as @e[tag=CubeKrowd] at @s run playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 1.2
execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] as @e[tag=Zeronia] at @s run tp @s ~ 106.4 ~
execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] as @e[tag=CubeKrowd] at @s run tp @s ~ 106 ~

execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] run kill @e[tag=CredText]

execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] as @e[tag=CreditsAS] at @s run data merge entity @s {CustomNameVisible:0}
execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] as @e[tag=CreditsAS] at @s run tp @s 141 100 64


execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] run data merge entity @e[tag=Zeronia,limit=1] {CustomNameVisible:1}
execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] run data merge entity @e[tag=CubeKrowd,limit=1] {CustomNameVisible:1}
execute if score $LobbyCred CmdData matches 60.. unless entity @a[predicate=snowski:show_credits] run scoreboard players set $LobbyCred CmdData 0