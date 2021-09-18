#> Give new snowballs to people who don't have 5 snowballs yet.
scoreboard players reset @a[tag=Knocked] repsb
execute if score $gamestate CmdData matches 3 run scoreboard players add @a[team=!Lobby,team=!Spectator,scores={snowballammo=..3}] repsb 1
execute as @a[scores={repsb=25..}] run scoreboard players add @s snowballammo 1
execute as @a[scores={repsb=25..}] run function snowski:game/player/ammomanage
execute as @a[scores={repsb=25..}] at @s run playsound minecraft:block.snow.break master @s ~ ~ ~ 0.3 1
execute as @a[scores={repsb=25..}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.2 1
scoreboard players reset @a[scores={repsb=25..}] repsb