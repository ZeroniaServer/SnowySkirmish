tag @a[team=!Green,team=!Red] remove YouSure
scoreboard players add @a[tag=YouSure] leavetimer 1

execute as @a[tag=YouSure,scores={leavetimer=50..}] run item replace entity @s inventory.13 with diamond_hoe{CustomModelData:5,ExitIcon:1b,HideFlags:2,display:{Name:'[{"text":"[Leave Game]","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click on this icon to leave the game!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']}}
execute as @a[tag=YouSure,scores={leavetimer=50..}] run tag @s remove YouSure
scoreboard players reset @a[tag=!YouSure,scores={leavetimer=1..}] leavetimer
execute as @a[team=!Lobby,team=!Spectator,tag=YouSure,nbt=!{Inventory:[{Slot:22b,id:"minecraft:diamond_hoe",tag:{ExitIcon:1b}}]}] run
execute as @a[tag=YouSure,nbt=!{Inventory:[{Slot:22b,id:"minecraft:diamond_hoe",tag:{ExitIcon:1b}}]}] run scoreboard players set @s leavegame 1

execute as @a[team=!Lobby,team=!Spectator,nbt=!{Inventory:[{Slot:22b,id:"minecraft:diamond_hoe",tag:{ExitIcon:1b}}]}] run tag @s add YouSure
execute as @a[team=!Lobby,team=!Spectator,nbt=!{Inventory:[{Slot:22b,id:"minecraft:diamond_hoe",tag:{ExitIcon:1b}}]}] run clear @s diamond_hoe{ExitIcon:1b}
execute as @a[team=!Lobby,team=!Spectator,nbt=!{Inventory:[{Slot:22b,id:"minecraft:diamond_hoe",tag:{ExitIcon:1b}}]}] run item replace entity @s inventory.13 with diamond_hoe{CustomModelData:6,ExitIcon:1b,HideFlags:2,display:{Name:'[{"text":"[Are you sure?]","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click on this icon again to leave the game!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']}}
