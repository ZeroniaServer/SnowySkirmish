#> Gives players up to max snowballs
clear @s snowball{CustomModelData:1}
execute if score @s snowballammo > $snowballs CmdData run scoreboard players operation @s snowballammo = $snowballs CmdData
execute if score @s snowballammo matches 1.. if score @s snowballammo <= $snowballs CmdData run item replace entity @s hotbar.4 with snowball{HideFlags:8,CanDestroy:["minecraft:clay"],CustomModelData:1,display:{Name:'[{"text":"Snowball","italic":false,"color":"dark_aqua","underlined":true}]'}} 1
execute if score @s snowballammo matches 1.. if score @s snowballammo <= $snowballs CmdData run item modify entity @s hotbar.4 snowski:setballcount
execute as @s[scores={snowballammo=..0}] run item replace entity @s hotbar.4 with air
execute as @s[scores={snowballammo=-1000..-1}] run scoreboard players set @s snowballammo 0