kill @e[tag=ArenaClear]
summon area_effect_cloud 188 255 -16 {Tags:["ArenaClear"],Duration:2000000000}
scoreboard players set @e[tag=ArenaClear] CmdData 255
execute as @e[tag=ArenaClear] run function snowski:game/arenaclear/clear