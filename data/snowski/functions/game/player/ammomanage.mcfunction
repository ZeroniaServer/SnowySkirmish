#> Gives players up to max snowballs
scoreboard players add @s snowballammo 0
execute if score @s snowballammo matches 0 run item replace entity @s hotbar.4 with snowball{HideFlags:8,CanDestroy:["minecraft:clay"],CustomModelData:1,display:{Name:'[{"text":"Snowball","italic":false,"color":"dark_aqua","underlined":true}]'}} 1
execute if score @s snowballammo matches 1.. if score @s snowballammo <= $snowballs CmdData run loot give @s loot snowski:snowball
execute as @s[scores={snowballammo=-1000..-1}] run scoreboard players set @s snowballammo 0
execute if score @s snowballammo > $snowballs CmdData run scoreboard players remove @s snowballammo 1
scoreboard players add @s snowballammo 1