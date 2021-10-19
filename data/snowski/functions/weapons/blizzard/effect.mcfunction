execute as @e[tag=BlizzardCloud] at @s run particle cloud ~ ~5 ~ 1 0.4 1 0.02 5 force
execute as @e[tag=BlizzardCloud] at @s run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 1 0.4 1 0 4 force
execute as @e[tag=BlizzardCloud] at @s run particle minecraft:snowflake ~ ~4.5 ~ 0.8 0 0.8 0 12 force

execute as @e[tag=BlizzardCloud] at @s run tp @s ~ ~ ~ ~8 ~

execute as @e[tag=GreenBlizzardCloud] at @s run particle dust 0 1 0 1 ^ ^ ^3 0 0 0 0 1 force
execute as @e[tag=GreenBlizzardCloud] at @s run particle dust 0 1 0 1 ^ ^ ^-3 0 0 0 0 1 force
execute as @e[tag=GreenBlizzardCloud] at @s run particle dust 0 1 0 1 ^3 ^ ^ 0 0 0 0 1 force
execute as @e[tag=GreenBlizzardCloud] at @s run particle dust 0 1 0 1 ^-3 ^ ^ 0 0 0 0 1 force

execute as @e[tag=RedBlizzardCloud] at @s run particle dust 1 0 0 1 ^ ^ ^3 0 0 0 0 1 force
execute as @e[tag=RedBlizzardCloud] at @s run particle dust 1 0 0 1 ^ ^ ^-3 0 0 0 0 1 force
execute as @e[tag=RedBlizzardCloud] at @s run particle dust 1 0 0 1 ^3 ^ ^ 0 0 0 0 1 force
execute as @e[tag=ReddBlizzardCloud] at @s run particle dust 1 0 0 1 ^-3 ^ ^ 0 0 0 0 1 force



scoreboard players add @e[tag=BlizzardCloud] CmdData 1 

#> Against players - Green
execute as @e[tag=GreenBlizzardCloud] at @s run effect give @a[team=Red,distance=..2] slowness 2 1 true
execute as @e[tag=GreenBlizzardCloud,scores={CmdData=10..}] at @s run scoreboard players add @a[tag=!Knocked,team=Red,distance=..2] sbdamage 3
execute as @e[tag=GreenBlizzardCloud,scores={CmdData=10..}] at @s as @a[tag=!Knocked,team=Red,distance=..2] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~0.5 1
execute as @e[tag=GreenBlizzardCloud] at @s as @a[team=Red,distance=..2] at @s anchored eyes run particle snowflake ^ ^ ^0.2 0.6 0.3 0.6 0.1 20 force @s

#> Against players - Red
execute as @e[tag=RedBlizzardCloud] at @s run effect give @a[team=Green,distance=..2] slowness 2 1 true
execute as @e[tag=RedBlizzardCloud,scores={CmdData=10..}] at @s run scoreboard players add @a[tag=!Knocked,team=Green,distance=..2] sbdamage 3
execute as @e[tag=RedBlizzardCloud,scores={CmdData=10..}] at @s as @a[tag=!Knocked,team=Green,distance=..2] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~0.5 1
execute as @e[tag=RedBlizzardCloud] at @s as @a[team=Green,distance=..2] at @s anchored eyes run particle snowflake ^ ^ ^0.2 0.6 0.3 0.6 0.1 20 force @s




scoreboard players reset @e[tag=BlizzardCloud,scores={CmdData=10..}] CmdData