#> Give new snowballs to people who don't have 5 snowballs yet.
scoreboard players reset @a[tag=Knocked] repsb
execute if score $gamestate CmdData matches 3 as @a[team=Red] at @s unless score @s snowballammo matches 4.. unless entity @e[tag=RedBlizzardCloud,distance=..2] run scoreboard players add @s repsb 1
execute if score $gamestate CmdData matches 3 as @a[team=Red] at @s unless score @s snowballammo matches 4.. if entity @e[tag=RedBlizzardCloud,distance=..2] run scoreboard players add @s repsb 3
execute if score $gamestate CmdData matches 3 as @a[team=Green] at @s unless score @s snowballammo matches 4.. unless entity @e[tag=GreenBlizzardCloud,distance=..2] run scoreboard players add @s repsb 1
execute if score $gamestate CmdData matches 3 as @a[team=Green] at @s unless score @s snowballammo matches 4.. if entity @e[tag=GreenBlizzardCloud,distance=..2] run scoreboard players add @s repsb 3

execute as @a[scores={repsb=25..}] run scoreboard players add @s snowballammo 1
execute as @a[scores={repsb=25..}] run function snowski:game/player/ammomanage
execute as @a[scores={repsb=25..}] at @s run playsound minecraft:block.snow.break master @s ~ ~ ~ 0.3 1
execute as @a[scores={repsb=25..}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.2 1
scoreboard players reset @a[scores={repsb=25..}] repsb

scoreboard players reset @a[team=!Red,team=!Green] repsb
scoreboard players reset @a[team=!Red,team=!Green] snowballammo