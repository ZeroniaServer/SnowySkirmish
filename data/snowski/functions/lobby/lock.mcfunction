setblock 137 106 49 air
setblock 139 106 49 air
setblock 138 106 48 air

setblock 138 105 49 air
setblock 138 105 49 minecraft:lectern[facing=south,has_book=true,powered=false]{Book:{Count:1b,id:"minecraft:written_book",tag:{author:"Zeronia",pages:['{"extra":[{"bold":true,"color":"red","text":"   Game Settings"},{"text":"\\n       "},{"underlined":true,"text":"Game Time:"},{"text":"\\n\\n"},{"color":"dark_aqua","text":"       "},{"color":"dark_aqua","clickEvent":{"action":"change_page","value":"5"},"text":"05 Minutes"},{"color":"dark_aqua","text":"\\n       "},{"color":"dark_aqua","clickEvent":{"action":"change_page","value":"6"},"text":"10 Minutes"},{"color":"dark_aqua","text":"\\n       "},{"color":"dark_aqua","clickEvent":{"action":"change_page","value":"7"},"text":"15 Minutes"},{"color":"dark_aqua","text":"\\n       "},{"color":"dark_aqua","clickEvent":{"action":"change_page","value":"8"},"text":"20 Minutes"},{"color":"dark_aqua","text":"\\n       "},{"color":"dark_aqua","clickEvent":{"action":"change_page","value":"10"},"text":"+1 Minute"},{"color":"dark_aqua","text":"\\n       "},{"color":"dark_aqua","clickEvent":{"action":"change_page","value":"11"},"text":"-1 Minute"},{"color":"dark_aqua","text":"\\n\\n       "},{"bold":true,"color":"dark_green","clickEvent":{"action":"change_page","value":"9"},"text":"[CONFIRM]"}],"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}'],resolved:1b,title:"The settings"}},Page:0}

team add coloryellow
team modify coloryellow color yellow

scoreboard objectives remove startgame

summon area_effect_cloud 138 106 49 {Tags:["SettingsInstruction"],Duration:2000000000,CustomName:'"Confirm Settings Here!"',CustomNameVisible:1b}
team join coloryellow @e[tag=SettingsInstruction]