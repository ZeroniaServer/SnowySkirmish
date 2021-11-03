scoreboard players add $SendTip CmdData 1

execute if score $SendTip CmdData matches 900.. run tag @e[tag=Tip,sort=random,limit=1] add SelTip
execute if score $SendTip CmdData matches 900.. run scoreboard players set $SendTip CmdData 0


execute as @e[tag=Tip1,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"Standing in a friendly Blizzard Cloud will make you replenish your snowballs quicker!","color":"gray"}]
execute as @e[tag=Tip2,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"You can throw snow- or ice balls at Snowball Turrets to quickly destroy them!","color":"gray"}]
execute as @e[tag=Tip3,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"You can craft more Snow Barricade blocks using snowballs!","color":"gray"}]
execute as @e[tag=Tip4,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"Snowballs can be used to quickly destroy Snow Barricade blocks!","color":"gray"}]
execute as @e[tag=Tip5,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"Sleighs can perform a big jump when you ride them off of a height!","color":"gray"}]
execute as @e[tag=Tip6,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"Sleighs will destroy themselves over time when they are not being used or when they perform jumps!","color":"gray"}]
execute as @e[tag=Tip7,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"Hot Chocolate can be used to heal or revive yourself!","color":"gray"}]
execute as @e[tag=Tip8,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"You can revive yourself at the campfire at your base!","color":"gray"}]
execute as @e[tag=Tip9,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"Reviving yourself will remove 4 points from the enemy team!","color":"gray"}]
execute as @e[tag=Tip10,tag=SelTip] run tellraw @a ["",{"text":"<","color":"dark_aqua"},{"text":"TIP!","color":"#00E0BB"},{"text":"> ","color":"dark_aqua"},{"text":"Falling out of the map while you are knocked out gives the enemy team bonus points!","color":"gray"}]

kill @e[tag=SelTip]
execute unless entity @e[tag=Tip] run function snowski:game/tips/createset