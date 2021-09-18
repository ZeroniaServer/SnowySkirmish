#> Effects
effect give @a saturation 1000000 100 true
effect give @a instant_health 1000000 100 true
effect give @a weakness 1000000 100 true

#> Max 100 HP
scoreboard players set @a[scores={Health=100..}] Health 100

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