#> Max 4 snowballs without powerups
clear @s snowball{CustomModelData:1}
execute as @s[scores={snowballammo=4}] run item replace entity @s hotbar.4 with snowball{HideFlags:8,CanDestroy:["minecraft:clay"],CustomModelData:1,display:{Name:'[{"text":"Snowball","italic":false,"color":"dark_aqua","underlined":true}]'}} 4
execute as @s[scores={snowballammo=3}] run item replace entity @s hotbar.4 with snowball{HideFlags:8,CanDestroy:["minecraft:clay"],CustomModelData:1,display:{Name:'[{"text":"Snowball","italic":false,"color":"dark_aqua","underlined":true}]'}} 3
execute as @s[scores={snowballammo=2}] run item replace entity @s hotbar.4 with snowball{HideFlags:8,CanDestroy:["minecraft:clay"],CustomModelData:1,display:{Name:'[{"text":"Snowball","italic":false,"color":"dark_aqua","underlined":true}]'}} 2
execute as @s[scores={snowballammo=1}] run item replace entity @s hotbar.4 with snowball{HideFlags:8,CanDestroy:["minecraft:clay"],CustomModelData:1,display:{Name:'[{"text":"Snowball","italic":false,"color":"dark_aqua","underlined":true}]'}} 1
execute as @s[scores={snowballammo=..0}] run item replace entity @s hotbar.4 with air
execute as @s[scores={snowballammo=-1000..-1}] run scoreboard players set @s snowballammo 0