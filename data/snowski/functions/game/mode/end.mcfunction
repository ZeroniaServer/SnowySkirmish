#> Announce winning team
execute if score $RedGifts CmdData > $GreenGifts CmdData run title @a title {"text":"Red won the game!","color":"red"}
execute if score $RedGifts CmdData > $GreenGifts CmdData run tellraw @a {"text":"Red won the game!","color":"red","bold":true}
execute if score $RedGifts CmdData > $GreenGifts CmdData run execute as @a[team=Red] positioned 137 105 55 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1.2
execute if score $RedGifts CmdData > $GreenGifts CmdData run execute as @a[team=Green] positioned 137 105 55 run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
execute if score $RedGifts CmdData > $GreenGifts CmdData run title @a subtitle ["",{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"},{"text":" points!","color":"blue"}]
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15435844]}]}}}}

execute if score $RedGifts CmdData < $GreenGifts CmdData run title @a title {"text":"Green won the game!","color":"green"}
execute if score $RedGifts CmdData < $GreenGifts CmdData run tellraw @a {"text":"Green won the game!","color":"green","bold":true}
execute if score $RedGifts CmdData < $GreenGifts CmdData run execute as @a[team=Green] positioned 137 105 55 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1.2
execute if score $RedGifts CmdData < $GreenGifts CmdData run execute as @a[team=Red] positioned 137 105 55 run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
execute if score $RedGifts CmdData < $GreenGifts CmdData run title @a subtitle ["",{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" points!","color":"blue"}]
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;3887386],FadeColors:[I;4312372]}]}}}}

bossbar remove endtime
bossbar remove preptime

execute if score $RedGifts CmdData = $GreenGifts CmdData run title @a title {"text":"It's a tie!","color":"gray"}
execute if score $RedGifts CmdData = $GreenGifts CmdData run tellraw @a {"text":"It's a tie!","color":"gray","bold":true}
execute if score $RedGifts CmdData = $GreenGifts CmdData run title @a subtitle ["",{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" points each!","color":"blue"}]

tellraw @a ["",{"text":"Final Score - ","color":"blue"},{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" || ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]

function snowski:game/arenaclear/start
fill 136 59 31 136 89 -17 air replace snow_block
scoreboard players set $gamestate CmdData 0
scoreboard players set $gametime CmdData 0
scoreboard players set $tensec CmdData 10
scoreboard players set $gametime CmdData 0

scoreboard players set $RedGifts CmdData 0
scoreboard players set $GreenGifts CmdData 0

kill @e[tag=PowerSpawn]
kill @e[tag=PowerGift]
kill @e[tag=ElfGift]
kill @e[tag=ElfSpawn]
kill @e[tag=SnowmanSpawn]
kill @e[tag=Snowman]
kill @e[tag=SnowBlockHit]
kill @e[tag=CRP]
kill @e[tag=CRPCircle]
kill @e[tag=SleighSpawn]
kill @e[tag=Sleigh]
kill @e[tag=BlizzardSpawn]
kill @e[tag=BlizzardCloud]

bossbar remove minecraft:scorebar

#> MVP STATS Time!
#Most gifts collected
tag @a remove giftchamp
execute as @a run scoreboard players operation @s mvpscore = @s giftcollect
tag @a[scores={mvpscore=1..}] add maybegiftchamp
execute if entity @a[tag=maybegiftchamp] run function snowski:game/mode/mvpstuff/pogger_calculation
tag @a[scores={mvpscore=0},tag=maybegiftchamp] add giftchamp
tag @a remove maybegiftchamp

#Most deaths
tag @a remove deathchamp
execute as @a run scoreboard players operation @s mvpscore = @s deathcollect
tag @a[scores={mvpscore=1..}] add maybedeathchamp
execute if entity @a[tag=maybedeathchamp] run function snowski:game/mode/mvpstuff/pogger_calculation
tag @a[scores={mvpscore=0},tag=maybedeathchamp] add deathchamp
tag @a remove maybedeathchamp

#Announce in chat
execute if entity @a[tag=deathchamp] run scoreboard players add $showstats 1
execute if entity @a[tag=giftchamp] run scoreboard players add $showstats 1
execute if score $showstats CmdData matches 1.. run tellraw @a ["",{"text":"❄","color":"blue"},{"text":" MVP Statistics ","color":"light_purple"},{"text":"❄","color":"blue"}]
scoreboard players reset $showstats CmdData

execute if score @a[tag=giftchamp,limit=1] giftcollect matches 2.. run tellraw @a ["",{"selector":"@a[tag=giftchamp]","color":"light_purple"},{"text":" collected the most gifts! ","color":"blue"},{"score":{"name":"@a[tag=giftchamp,limit=1]","objective":"giftcollect"},"color":"light_purple"},{"text":" gifts collected!","color":"blue"}]
execute if score @a[tag=giftchamp,limit=1] giftcollect matches 1 run tellraw @a ["",{"selector":"@a[tag=giftchamp]","color":"light_purple"},{"text":" collected the most gifts! ","color":"blue"},{"score":{"name":"@a[tag=giftchamp,limit=1]","objective":"giftcollect"},"color":"light_purple"},{"text":" gift collected!","color":"blue"}]

execute if score @a[tag=deathchamp,limit=1] deathcollect matches 2.. run tellraw @a ["",{"selector":"@a[tag=deathchamp]","color":"light_purple"},{"text":" had serious issues with staying alive! ","color":"blue"},{"score":{"name":"@a[tag=deathchamp,limit=1]","objective":"deathcollect"},"color":"light_purple"},{"text":" knockouts!","color":"blue"}]
execute if score @a[tag=deathchamp,limit=1] deathcollect matches 1 run tellraw @a ["",{"selector":"@a[tag=deathchamp]","color":"light_purple"},{"text":" had serious issues with staying alive! ","color":"blue"},{"score":{"name":"@a[tag=deathchamp,limit=1]","objective":"deathcollect"},"color":"light_purple"},{"text":" knockout!","color":"blue"}]

tag @a[team=Green] remove JoinedGame
tag @a[team=Red] remove JoinedGame

kill @e[tag=GameID]
summon marker ~ ~ ~ {Tags:["GameID"]}
execute store result score $GameID GameID run data get entity @e[tag=GameID,limit=1] UUID[0]
kill @e[tag=GameID]