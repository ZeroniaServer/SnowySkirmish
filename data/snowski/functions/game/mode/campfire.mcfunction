#> Heal when near a campfire
execute as @a[team=Green,tag=Knocked,scores={nnhealth=..1}] at @s if entity @e[tag=GreenCampfire,distance=..3] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was revived! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"-2","color":"gold"}]
execute as @a[team=Green,tag=Knocked,scores={nnhealth=..1}] at @s if entity @e[tag=GreenCampfire,distance=..3] run scoreboard players remove $RedGifts CmdData 2
execute as @a[team=Green,scores={nnhealth=..39}] at @s if entity @e[tag=GreenCampfire,distance=..3] run scoreboard players add @s nnhealth_mod 1

execute as @a[team=Red,tag=Knocked,scores={nnhealth=..1}] at @s if entity @e[tag=RedCampfire,distance=..3] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" was revived! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"-2","color":"gold"}]
execute as @a[team=Red,tag=Knocked,scores={nnhealth=..1}] at @s if entity @e[tag=RedCampfire,distance=..3] run scoreboard players remove $GreenGifts CmdData 2
execute as @a[team=Red,scores={nnhealth=..39}] at @s if entity @e[tag=RedCampfire,distance=..3] run scoreboard players add @s nnhealth_mod 1