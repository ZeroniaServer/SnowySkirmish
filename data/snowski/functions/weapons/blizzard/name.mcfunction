execute store result score $tempuuid playerUUID run scoreboard players get @s playerUUID
execute if entity @s[tag=RedBBArrow] as @a[team=Red,predicate=snowski:matches_uuid] run data modify block 0 0 0 front_text.messages[0] set value '["",{"selector":"@p[team=Red,predicate=snowski:matches_uuid]"},{"text":"\'s Blizzard","color":"dark_aqua"}]'
execute if entity @s[tag=GreenBBArrow] as @a[team=Green,predicate=snowski:matches_uuid] run data modify block 0 0 0 front_text.messages[0] set value '["",{"selector":"@p[team=Green,predicate=snowski:matches_uuid]"},{"text":"\'s Blizzard","color":"dark_aqua"}]'
data modify entity @s CustomName set from block 0 0 0 front_text.messages[0]
scoreboard players reset $tempuuid playerUUID