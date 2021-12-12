execute unless score @s UUIDtracker matches -2147483648..2147483647 at @s if entity @a[team=Red,limit=1,distance=..5,tag=HoldCane,tag=justHit] store result score @s UUIDtracker run scoreboard players get @a[team=Red,limit=1,distance=..5,tag=HoldCane,tag=justHit] playerUUID
scoreboard players operation $tempuuid playerUUID = @s UUIDtracker
tellraw @a ["",{"selector":"@s","color":"green"},{"text":" was knocked out by ","color":"dark_aqua"},{"selector":"@a[team=Red,limit=1,predicate=snowski:matches_uuid,tag=justHit]","color":"red"},{"text":"! ","color":"dark_aqua"},{"text":"Red ","color":"red"},{"text":"gained ","color":"dark_aqua"},{"text":"4 ","color":"gold"},{"text":"points!","color":"dark_aqua"}]
scoreboard players reset @s UUIDtracker
scoreboard players reset $tempuuid playerUUID