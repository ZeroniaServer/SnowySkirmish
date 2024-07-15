#> Gives players up to max snowballs
scoreboard players add @s snowballammo 0
execute if score @s snowballammo matches 0 run item replace entity @s hotbar.4 with snowball[custom_name='[{"text":"Snowball","italic":false,"color":"dark_aqua","underlined":true}]',can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},custom_model_data=1] 1
execute if score @s snowballammo matches 1.. if score @s snowballammo <= $snowballs CmdData run loot give @s loot snowski:snowball
execute as @s[scores={snowballammo=-1000..-1}] run scoreboard players set @s snowballammo 0
execute if score @s snowballammo > $snowballs CmdData run scoreboard players remove @s snowballammo 1
scoreboard players add @s snowballammo 1