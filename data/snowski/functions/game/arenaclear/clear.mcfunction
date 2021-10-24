execute as @s at @s run fill 188 ~ -16 90 ~ 32 air replace clay
execute as @s at @s run fill 188 ~ -16 90 ~ 32 air replace light
execute as @s[scores={CmdData=1..}] at @s run tp @s ~ ~-1 ~
scoreboard players remove @s CmdData 1
execute if entity @s[scores={CmdData=1..}] run function snowski:game/arenaclear/clear
execute unless entity @s[scores={CmdData=1..}] run kill @s