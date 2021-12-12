#> Effects
effect give @a saturation 1000000 100 true
effect give @a resistance 1000000 100 true
effect give @a[tag=!HoldCane] weakness 1000000 100 true

#> Scores
scoreboard players reset @a[scores={throwsb=1..}] throwsb

#> Crafting snowblocks
function snowski:game/player/craftblock

#> Prevent sleeping in beds
function snowski:game/player/sleepy

#> Forced gamemodes & player items
gamemode spectator @a[team=Spectator,gamemode=!spectator]
gamemode adventure @a[team=Green,gamemode=!adventure,tag=!Knocked]
gamemode adventure @a[team=Red,gamemode=!adventure,tag=!Knocked]
gamemode adventure @a[team=Lobby,gamemode=!adventure]

#> Remove MVP stuff
tag @a[team=!Red,team=!Green] remove giftchamp
tag @a[team=!Red,team=!Green] remove deathchamp
scoreboard players reset @a[team=!Red,team=!Green] giftcollect
scoreboard players reset @a[team=!Red,team=!Green] deathcollect
scoreboard players reset @a[team=!Red,team=!Green] mvpscore

#> UUID tracking
execute as @a store result score @s playerUUID run data get entity @s UUID[0]
execute as @e[type=arrow] store result score @s playerUUID run data get entity @s Owner[0]
execute as @e[type=arrow] at @s run function snowski:game/player/trackuuid
scoreboard players add @a notnearsb 0
execute as @a unless entity @s[team=!Red,team=!Green] at @s unless entity @e[type=arrow,distance=..3] run scoreboard players add @s notnearsb 1
execute as @a unless entity @s[team=!Red,team=!Green] at @s if entity @e[type=arrow,distance=..3] run scoreboard players set @s notnearsb 0
execute as @a[scores={notnearsb=5..}] run scoreboard players reset @s UUIDtracker