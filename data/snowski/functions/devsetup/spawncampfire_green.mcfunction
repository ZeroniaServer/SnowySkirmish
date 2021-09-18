execute as @e[tag=GreenCampfire] at @s run setblock ~ ~ ~ air destroy
kill @e[tag=GreenCampfire]

execute as @s at @s run summon leash_knot ~ ~ ~ {Tags:["Devtool"]}
execute as @e[tag=Devtool] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["GreenCampfire"]}
execute as @e[tag=Devtool] at @s run setblock ~ ~ ~ campfire

kill @e[tag=Devtool]

scoreboard players set $GreenCampfire CmdData 5