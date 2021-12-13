execute unless score @s UUIDtracker matches -2147483648..2147483647 at @s if entity @a[team=Green,limit=1,distance=..5,tag=HoldCane,tag=justHit] store result score @s UUIDtracker run scoreboard players get @a[team=Green,limit=1,distance=..5,tag=HoldCane,tag=justHit] playerUUID
scoreboard players operation $tempuuid playerUUID = @s UUIDtracker
execute as @e[tag=Snowman,tag=!Melted] if score @s playerUUID = $tempuuid playerUUID run tag @s add sbfound
execute as @e[type=area_effect_cloud,tag=GreenBlizzardCloud] if score @s playerUUID = $tempuuid playerUUID run tag @s add bbfound
execute unless entity @s[tag=sbdamaged] unless entity @s[tag=bbdamaged] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" was knocked out by ","color":"dark_aqua"},{"selector":"@a[team=Green,limit=1,predicate=snowski:matches_uuid,tag=justHit]","color":"green"},{"text":"! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
execute if entity @s[tag=sbdamaged,tag=!bbdamaged] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" was knocked out by ","color":"dark_aqua"},{"selector":"@e[type=armor_stand,tag=Snowman,limit=1,tag=sbfound]","color":"green"},{"text":"! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
execute if entity @s[tag=bbdamaged] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" froze in ","color":"dark_aqua"},{"selector":"@e[type=area_effect_cloud,tag=GreenBlizzardCloud,limit=1,tag=bbfound]","color":"green"},{"text":"! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
scoreboard players reset @s UUIDtracker
scoreboard players reset $tempuuid playerUUID
tag @e[tag=sbfound] remove sbfound
tag @e[tag=bbfound] remove bbfound