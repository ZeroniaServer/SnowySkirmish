#> Add knocked tag if player has 0 HP and increase knocktime score
execute as @a[team=Green,scores={Health=0}] run tag @s add Knocked
execute as @a[team=Red,scores={Health=0}] run tag @s add Knocked
scoreboard players add @a[tag=Knocked] knocktime 1

#> Knockfx
execute as @a[scores={knocktime=1}] at @s run playsound minecraft:entity.arrow.hit master @a ~ ~ ~ 1.5 0
execute as @a[scores={knocktime=1}] at @s run item replace entity @s armor.head with snow_block{tag:{Shame:1bs},display:{Name:'[{"text":"Snow of Shame.","italic":false,"color":"red"}]',Lore:['[{"text":"Go warm up at a campfire to respawn.","italic":false,"color":"gray"}]','[{"text":"Try to... Not get hit next time.","italic":false,"color":"gray"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:3} 1
execute as @a[scores={knocktime=1}] at @s run effect give @s blindness 1 100 true
execute as @a[scores={knocktime=1}] at @s run particle block snow_block ~ ~1.6 ~ 0.1 0.1 0.1 0.1 50
execute as @a[scores={knocktime=1}] at @s run particle block ice ~ ~1.6 ~ 0.2 0.2 0.2 0.2 25
effect give @a[tag=Knocked,scores={knocktime=1}] slowness 1 0 true
effect give @a[tag=Knocked,scores={knocktime=1}] glowing 1 0 true
clear @a[tag=Knocked] snowball
clear @a[tag=Knocked] ghast_spawn_egg
execute unless score $gamestate CmdData matches 2 run clear @a[tag=Knocked] clay

#> Remove knocked fx when HP is above 1
execute as @a[tag=Knocked,scores={Health=1..}] run scoreboard players reset @s knocktime
execute as @a[tag=Knocked,scores={Health=1..}] run item replace entity @s armor.head with air
execute as @a[tag=Knocked,scores={Health=1..}] run function snowski:game/player/ammomanage
execute as @a[tag=Knocked,scores={Health=1..}] run function snowski:game/player/playerdeco
execute as @a[tag=Knocked,scores={Health=1..}] run tag @s remove Knocked

#> Actionbars and respawn
execute as @a[scores={Health=1..},team=!Lobby,team=!Spectator,team=!Developer] run title @s actionbar ["",{"text":"❤","color":"dark_red"},{"score":{"name":"@s","objective":"Health"},"color":"red"}]

execute as @a[scores={knocktime=100}] run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" was knocked out! ","color":"dark_aqua"},{"text":"+4","color":"gold"}]
execute as @a[scores={knocktime=100}] run scoreboard players add @s deathcollect 1
#> Fall countdown
execute as @a[scores={knocktime=1}] run title @s actionbar ["",{"text":"❆ ","color":"aqua"},{"text":"Falling in: ","color":"dark_aqua"},{"text":"5","color":"blue"}]
execute as @a[scores={knocktime=20}] run title @s actionbar ["",{"text":"❆ ","color":"aqua"},{"text":"Falling in: ","color":"dark_aqua"},{"text":"4","color":"blue"}]
execute as @a[scores={knocktime=40}] run title @s actionbar ["",{"text":"❆ ","color":"aqua"},{"text":"Falling in: ","color":"dark_aqua"},{"text":"3","color":"blue"}]
execute as @a[scores={knocktime=60}] run title @s actionbar ["",{"text":"❆ ","color":"aqua"},{"text":"Falling in: ","color":"dark_aqua"},{"text":"2","color":"blue"}]
execute as @a[scores={knocktime=80}] run title @s actionbar ["",{"text":"❆ ","color":"aqua"},{"text":"Falling in: ","color":"dark_aqua"},{"text":"1","color":"blue"}]

#> Fallfx
execute as @a[team=Green,scores={knocktime=100}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["GreenBody","BodyDeco"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:2096896,Pose:{Head:[46f,0f,0f],LeftLeg:[266f,348f,0f],RightLeg:[266f,13f,0f],LeftArm:[15f,0f,0f],RightArm:[297f,50f,24f]}}
execute as @a[team=Red,scores={knocktime=100}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["RedBody","BodyDeco"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:2096896,Pose:{Head:[46f,0f,0f],LeftLeg:[266f,348f,0f],RightLeg:[266f,13f,0f],LeftArm:[15f,0f,0f],RightArm:[297f,50f,24f]}}
execute as @a[scores={knocktime=100}] at @s run tp @e[tag=BodyDeco,limit=1,sort=nearest,distance=..4] @s
execute as @a[scores={knocktime=100}] at @s run tp @e[tag=BodyDeco,limit=1,sort=nearest,distance=..4] ~ ~ ~ ~350 ~
execute as @a[scores={knocktime=100}] at @s run setblock ~ 100 ~ warped_wall_sign
execute as @a[scores={knocktime=100}] at @s run data merge block ~ 100 ~ {Text1:"{\"selector\":\"@p[scores={knocktime=100}]\"}"}
execute as @a[scores={knocktime=100}] at @s run summon area_effect_cloud ~ ~0.8 ~ {Tags:["BodyDeco","BodyAEC"],Duration:119,CustomNameVisible:1b}
execute as @a[scores={knocktime=100}] at @s run data modify entity @e[tag=BodyAEC,limit=1,sort=nearest] CustomName set from block ~ 100 ~ Text1
execute as @a[scores={knocktime=100}] at @s run fill ~1 100 ~1 ~-1 100 ~-1 air replace warped_wall_sign

gamemode spectator @a[scores={knocktime=101}]
execute as @a[scores={knocktime=101..}] at @s at @e[tag=BodyDeco,type=armor_stand,limit=1,sort=nearest] run spectate @e[tag=BodyDeco,type=armor_stand,limit=1,sort=nearest]

scoreboard players add @e[tag=BodyDeco] knocktime 1
execute as @e[tag=BodyDeco,scores={knocktime=1}] run item replace entity @s armor.head with snow_block
execute as @e[tag=BodyDeco,scores={knocktime=2..7}] at @s run tp @s ~ ~-0.1 ~
execute as @e[tag=GreenBody,scores={knocktime=1}] run item replace entity @s armor.chest with leather_chestplate{display:{color:5439325}}
execute as @e[tag=RedBody,scores={knocktime=1}] run item replace entity @s armor.chest with leather_chestplate{display:{color:16722217}}
execute as @e[tag=BodyDeco,scores={knocktime=1}] run item replace entity @s armor.legs with leather_leggings{display:{color:4868682}}
execute as @e[tag=BodyDeco,scores={knocktime=1}] run item replace entity @s armor.feet with leather_boots{display:{color:4868682}}
execute as @e[tag=BodyDeco,scores={knocktime=1}] run item replace entity @s weapon.mainhand with white_banner

kill @e[tag=BodyDeco,scores={knocktime=79..}]

#> Respawn countdown
execute as @a[scores={knocktime=120}] run title @s actionbar ["",{"text":"❆ ","color":"aqua"},{"text":"Respawning in: ","color":"dark_aqua"},{"text":"3","color":"blue"}]
execute as @a[scores={knocktime=120}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 2
execute as @a[scores={knocktime=140}] run title @s actionbar ["",{"text":"❆ ","color":"aqua"},{"text":"Respawning in: ","color":"dark_aqua"},{"text":"2","color":"blue"}]
execute as @a[scores={knocktime=140}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 2
execute as @a[scores={knocktime=160}] run title @s actionbar ["",{"text":"❆ ","color":"aqua"},{"text":"Respawning in: ","color":"dark_aqua"},{"text":"1","color":"blue"}]
execute as @a[scores={knocktime=160}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 1

execute as @a[scores={knocktime=180}] at @s run particle block snow_block ~ ~1 ~ 0.2 0.5 0.2 0.1 100
execute as @a[scores={knocktime=180}] at @s run particle block ice ~ ~1 ~ 0.2 0.5 0.2 0.1 20
execute as @a[scores={knocktime=180}] at @s run playsound minecraft:block.snow.break master @a ~ ~ ~ 1 0
execute as @a[scores={knocktime=180}] at @s run gamemode adventure @s

execute as @a[team=Green,scores={knocktime=180..}] at @e[tag=GreenCampfire] run tp @s ~ ~0.7 ~ 90 0
execute as @a[team=Green,scores={knocktime=180..}] at @e[tag=GreenCampfire] run particle flame ~ ~ ~ 0 0 0 0.1 10 force
execute as @a[team=Green,scores={knocktime=180..}] at @e[tag=GreenCampfire] run playsound entity.blaze.shoot master @a ~ ~ ~ 0.7 0
execute as @a[team=Green,scores={knocktime=100}] run summon firework_rocket 101 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute as @a[team=Green,scores={knocktime=100}] run scoreboard players add $RedGifts CmdData 4
execute as @a[team=Green,scores={knocktime=180..}] run scoreboard players set @s Health 100

execute as @a[team=Red,scores={knocktime=180..}] at @e[tag=RedCampfire] run tp @s ~ ~0.7 ~ -90 0
execute as @a[team=Red,scores={knocktime=180..}] at @e[tag=RedCampfire] run particle flame ~ ~ ~ 0 0 0 0.1 10 force
execute as @a[team=Red,scores={knocktime=180..}] at @e[tag=RedCampfire] run playsound entity.blaze.shoot master @a ~ ~ ~ 0.7 0
execute as @a[team=Red,scores={knocktime=100}] run summon firework_rocket 177 80 8 {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute as @a[team=Red,scores={knocktime=100}] run scoreboard players add $GreenGifts CmdData 4
execute as @a[team=Red,scores={knocktime=180..}] run scoreboard players set @s Health 100