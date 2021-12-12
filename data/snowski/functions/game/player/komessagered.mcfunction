execute unless score @s UUIDtracker matches -2147483648..2147483647 at @s if entity @a[team=Green,limit=1,distance=..5,tag=HoldCane,tag=justHit] store result score @s UUIDtracker run scoreboard players get @a[team=Green,limit=1,distance=..5,tag=HoldCane,tag=justHit] playerUUID
scoreboard players operation $tempuuid playerUUID = @s UUIDtracker
say @a[tag=justHit]
say @a[predicate=snowski:matches_uuid]
execute unless entity @s[tag=sbdamaged] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" was knocked out by ","color":"dark_aqua"},{"selector":"@a[team=Green,limit=1,predicate=snowski:matches_uuid,tag=justHit]","color":"green"},{"text":"! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
execute if entity @s[tag=sbdamaged] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" was knocked out by ","color":"dark_aqua"},{"selector":"@a[team=Green,limit=1,predicate=snowski:matches_uuid,tag=justHit]","color":"green"},{"text":"'s Snowball Turret! ","color":"dark_aqua"},{"text":"Green ","color":"green"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
scoreboard players reset @s UUIDtracker
scoreboard players reset $tempuuid playerUUID