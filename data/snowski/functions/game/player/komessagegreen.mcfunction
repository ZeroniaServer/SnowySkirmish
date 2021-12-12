execute unless score @s UUIDtracker matches -2147483648..2147483647 at @s if entity @a[team=Red,limit=1,distance=..5,tag=HoldCane,tag=justHit] store result score @s UUIDtracker run scoreboard players get @a[team=Red,limit=1,distance=..5,tag=HoldCane,tag=justHit] playerUUID
scoreboard players operation $tempuuid playerUUID = @s UUIDtracker
execute as @e[tag=Snowman,tag=!Melted] if score @s playerUUID = $tempuuid playerUUID run tag @s add sbfound
execute unless entity @s[tag=sbdamaged] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was knocked out by ","color":"dark_aqua"},{"selector":"@a[team=Red,limit=1,predicate=snowski:matches_uuid,tag=justHit]","color":"red"},{"text":"! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
execute if entity @s[tag=sbdamaged] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was knocked out by ","color":"dark_aqua"},{"selector":"@e[type=armor_stand,tag=Snowman,limit=1,tag=sbfound]","color":"red"},{"text":"! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
scoreboard players reset @s UUIDtracker
scoreboard players reset $tempuuid playerUUID
tag @e[tag=sbfound] remove sbfound