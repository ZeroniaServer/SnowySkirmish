#> Remove 1 tick from the timer
scoreboard players set $20 CmdData 20
scoreboard players set $60 CmdData 60

scoreboard players remove $ticks CmdData 1

#> calculate remaining minutes and seconds
#Minutes
scoreboard players operation $minutes CmdData = $ticks CmdData
scoreboard players operation $minutes CmdData /= $20 CmdData
scoreboard players operation $minutes CmdData /= $60 CmdData
#Seconds
scoreboard players operation $seconds CmdData = $ticks CmdData
scoreboard players operation $seconds CmdData /= $20 CmdData
scoreboard players operation $seconds CmdData %= $60 CmdData

#> Set bossbar names
execute if score $minutes CmdData matches 10.. if score $seconds CmdData matches 10.. run bossbar set scorebar name ["",{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"score":{"name":"$minutes","objective":"CmdData"},"color":"dark_gray"},{"text":":","color":"dark_gray"},{"score":{"name":"$seconds","objective":"CmdData"},"color":"dark_gray"},{"text":" | ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]
execute if score $minutes CmdData matches ..9 if score $seconds CmdData matches 10.. run bossbar set scorebar name ["",{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"text":"0","color":"dark_gray"},{"score":{"name":"$minutes","objective":"CmdData"},"color":"dark_gray"},{"text":":","color":"dark_gray"},{"score":{"name":"$seconds","objective":"CmdData"},"color":"dark_gray"},{"text":" | ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]
execute if score $minutes CmdData matches 10.. if score $seconds CmdData matches ..9 run bossbar set scorebar name ["",{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"score":{"name":"$minutes","objective":"CmdData"},"color":"dark_gray"},{"text":":","color":"dark_gray"},{"text":"0","color":"dark_gray"},{"score":{"name":"$seconds","objective":"CmdData"},"color":"dark_gray"},{"text":" | ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]
execute if score $minutes CmdData matches ..9 if score $seconds CmdData matches ..9 run bossbar set scorebar name ["",{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"text":"0","color":"dark_gray"},{"score":{"name":"$minutes","objective":"CmdData"},"color":"dark_gray"},{"text":":","color":"dark_gray"},{"text":"0","color":"dark_gray"},{"score":{"name":"$seconds","objective":"CmdData"},"color":"dark_gray"},{"text":" | ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]

execute if score $minutes CmdData matches ..0 if score $seconds CmdData matches ..9 run bossbar set scorebar name ["",{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"text":"0","color":"dark_aqua"},{"score":{"name":"$minutes","objective":"CmdData"},"color":"dark_aqua"},{"text":":","color":"dark_aqua"},{"text":"0","color":"dark_aqua"},{"score":{"name":"$seconds","objective":"CmdData"},"color":"dark_aqua"},{"text":" | ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]
execute if score $minutes CmdData matches ..0 if score $seconds CmdData matches 10 run bossbar set scorebar name ["",{"text":"Green: ","color":"green"},{"score":{"name":"$GreenGifts","objective":"CmdData"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"text":"0","color":"dark_aqua"},{"score":{"name":"$minutes","objective":"CmdData"},"color":"dark_aqua"},{"text":":","color":"dark_aqua"},{"score":{"name":"$seconds","objective":"CmdData"},"color":"dark_aqua"},{"text":" | ","color":"dark_gray"},{"text":"Red: ","color":"red"},{"score":{"name":"$RedGifts","objective":"CmdData"},"color":"gold"}]