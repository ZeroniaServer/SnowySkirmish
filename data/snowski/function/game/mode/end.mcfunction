#> Announce winning team
execute if score $RedGifts CmdData > $GreenGifts CmdData run title @a title {"text":"Red won the game!","color":"red"}
execute if score $RedGifts CmdData > $GreenGifts CmdData run tellraw @a ["",{"text":"Red won the game! ","color":"red","bold":true},{"text":"Final Score: ","color":"blue"},{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" || ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]
execute if score $RedGifts CmdData > $GreenGifts CmdData as @a[team=Red] positioned 137 105 55 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1.2
execute if score $RedGifts CmdData > $GreenGifts CmdData as @a[team=Green] positioned 137 105 55 run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
execute if score $RedGifts CmdData > $GreenGifts CmdData run title @a subtitle ["",{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"},{"text":" points!","color":"blue"}]
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;11743532],fade_colors:[I;15435844],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;11743532],fade_colors:[I;15435844],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;11743532],fade_colors:[I;15435844],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;11743532],fade_colors:[I;15435844],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;11743532],fade_colors:[I;15435844],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;11743532],fade_colors:[I;15435844],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;11743532],fade_colors:[I;15435844],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData > $GreenGifts CmdData at @e[tag=RedCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;11743532],fade_colors:[I;15435844],has_trail:true,has_twinkle:false}],flight_duration:2}}}}

execute if score $RedGifts CmdData < $GreenGifts CmdData run title @a title {"text":"Green won the game!","color":"green"}
execute if score $RedGifts CmdData < $GreenGifts CmdData run tellraw @a ["",{"text":"Green won the game! ","color":"green","bold":true},{"text":"Final Score: ","color":"blue"},{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" || ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]
execute if score $RedGifts CmdData < $GreenGifts CmdData as @a[team=Green] positioned 137 105 55 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1.2
execute if score $RedGifts CmdData < $GreenGifts CmdData as @a[team=Red] positioned 137 105 55 run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
execute if score $RedGifts CmdData < $GreenGifts CmdData run title @a subtitle ["",{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" points!","color":"blue"}]
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;3887386],fade_colors:[I;4312372],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;3887386],fade_colors:[I;4312372],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;3887386],fade_colors:[I;4312372],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;3887386],fade_colors:[I;4312372],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;3887386],fade_colors:[I;4312372],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;3887386],fade_colors:[I;4312372],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;3887386],fade_colors:[I;4312372],has_trail:true,has_twinkle:false}],flight_duration:2}}}}
execute if score $RedGifts CmdData < $GreenGifts CmdData at @e[tag=GreenCampfire] run summon firework_rocket ~ ~ ~ {Tags:["PointsFW"],LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;3887386],fade_colors:[I;4312372],has_trail:true,has_twinkle:false}],flight_duration:2}}}}

bossbar remove endtime
bossbar remove preptime

execute if score $RedGifts CmdData = $GreenGifts CmdData as @a[team=!Lobby,team=!Spectator] positioned 137 105 55 run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 0
execute if score $RedGifts CmdData = $GreenGifts CmdData run title @a title {"text":"It's a tie!","color":"gray"}
execute if score $RedGifts CmdData = $GreenGifts CmdData run tellraw @a ["",{"text":"It's a tie! ","color":"gray","bold":true},{"text":"Final Score: ","color":"blue"},{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" || ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]
execute if score $RedGifts CmdData = $GreenGifts CmdData run title @a subtitle ["",{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" points each!","color":"blue"}]

function snowski:lobby/lock
function snowski:game/arenaclear/start
fill 136 59 31 136 89 -17 air replace snow_block
scoreboard players set $gamestate CmdData 0
scoreboard players set $gametime CmdData 0
scoreboard players set $tensec CmdData 10
scoreboard players set $gametime CmdData 0
scoreboard players set $elfCount CmdData 0
scoreboard players set $powerupspawn2 CmdData 9
scoreboard players reset $PowerGifts CmdData
schedule clear snowski:game/mode/powerup/spawn
schedule clear snowski:game/mode/powerup/respawn

scoreboard players set $RedGifts CmdData 0
scoreboard players set $GreenGifts CmdData 0

function snowski:game/mode/killentities

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
execute if entity @a[tag=deathchamp] run scoreboard players add $showstats CmdData 1
execute if entity @a[tag=giftchamp] run scoreboard players add $showstats CmdData 1
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