kill @e[tag=ArenaClear]
summon area_effect_cloud 188 255 -17 {Tags:["ArenaClear"],Duration:2000000000}
scoreboard players set @e[tag=ArenaClear] CmdData 255
execute as @e[tag=ArenaClear] run function snowski:game/arenaclear/clear

setblock 136 73 11 ice
setblock 136 73 9 ice
setblock 136 73 3 blue_ice
setblock 136 73 2 minecraft:packed_ice
setblock 136 73 1 blue_ice

setblock 136 63 26 minecraft:lime_stained_glass
setblock 136 63 25 minecraft:lime_stained_glass
setblock 136 63 24 minecraft:lime_stained_glass
setblock 137 62 25 minecraft:lime_stained_glass
setblock 136 62 26 minecraft:lime_stained_glass
setblock 135 62 25 minecraft:lime_stained_glass
setblock 136 62 24 minecraft:lime_stained_glass
setblock 136 62 25 minecraft:sea_lantern
setblock 136 61 25 minecraft:lime_stained_glass
setblock 136 60 25 minecraft:lime_stained_glass
setblock 136 64 25 minecraft:black_terracotta
setblock 136 64 -1 minecraft:lime_stained_glass
setblock 136 64 -2 minecraft:lime_stained_glass
setblock 136 64 0 minecraft:lime_stained_glass
setblock 136 63 -1 minecraft:sea_lantern
setblock 136 63 0 minecraft:lime_stained_glass
setblock 136 63 -2 minecraft:lime_stained_glass
setblock 136 62 -1 minecraft:lime_stained_glass
setblock 136 61 -1 minecraft:lime_stained_glass
setblock 136 65 -1 minecraft:black_terracotta