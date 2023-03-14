clone 137 106 49 137 106 49 136 107 57
clone 139 106 49 139 106 49 136 108 57
clone 138 106 48 138 106 48 136 109 57
setblock 137 106 49 air
setblock 139 106 49 air
setblock 138 106 48 air

clone 136 106 57 136 106 57 138 105 49

team add coloryellow
team modify coloryellow color yellow

scoreboard objectives remove startgame

summon area_effect_cloud 138 106 49 {Tags:["SettingsInstruction"],Duration:2000000000,CustomName:'"Confirm Settings Here!"',CustomNameVisible:1b}
team join coloryellow @e[tag=SettingsInstruction]