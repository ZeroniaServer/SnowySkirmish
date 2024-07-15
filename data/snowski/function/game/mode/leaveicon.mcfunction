tag @a[team=!Green,team=!Red] remove YouSure
scoreboard players add @a[tag=YouSure] leavetimer 1

execute as @a[tag=YouSure,scores={leavetimer=50..}] run item replace entity @s inventory.13 with diamond_hoe[custom_name='[{"text":"[Leave Game]","italic":false,"color":"gold"}]',lore=['[{"text":"","italic":false}]','[{"text":"Click on this icon to leave the game!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data=5,attribute_modifiers={modifiers:[],show_in_tooltip:0b},custom_data={ExitIcon:1b}]
execute as @a[tag=YouSure,scores={leavetimer=50..}] run tag @s remove YouSure
scoreboard players reset @a[tag=!YouSure,scores={leavetimer=1..}] leavetimer
execute as @a[team=!Lobby,team=!Spectator,tag=YouSure] unless items entity @s inventory.13 diamond_hoe[custom_data={ExitIcon:1b}] run scoreboard players set @s leavegame 1

execute as @a[team=!Lobby,team=!Spectator] unless items entity @s inventory.13 diamond_hoe[custom_data={ExitIcon:1b}] run tag @s add YouSure
execute as @a[team=!Lobby,team=!Spectator] unless items entity @s inventory.13 diamond_hoe[custom_data={ExitIcon:1b}] run clear @s diamond_hoe[custom_data={ExitIcon:1b}]
execute as @a[team=!Lobby,team=!Spectator] unless items entity @s inventory.13 diamond_hoe[custom_data={ExitIcon:1b}] run item replace entity @s inventory.13 with diamond_hoe[custom_name='[{"text":"[Are you sure?]","italic":false,"color":"red"}]',lore=['[{"text":"","italic":false}]','[{"text":"Click on this icon again to leave the game!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data=6,attribute_modifiers={modifiers:[],show_in_tooltip:0b},custom_data={ExitIcon:1b}]