#> Heal when near a campfire
execute as @a[team=Green,scores={Health=..99}] at @s if entity @e[tag=GreenCampfire,distance=..3] run scoreboard players add @s Health 2
execute as @a[team=Red,scores={Health=..99}] at @s if entity @e[tag=RedCampfire,distance=..3] run scoreboard players add @s Health 2