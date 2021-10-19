#> Heal when near a campfire
execute as @a[team=Green,scores={nnhealth=..39}] at @s if entity @e[tag=GreenCampfire,distance=..3] run scoreboard players add @s nnhealth_mod 1
execute as @a[team=Red,scores={nnhealth=..39}] at @s if entity @e[tag=RedCampfire,distance=..3] run scoreboard players add @s nnhealth_mod 1