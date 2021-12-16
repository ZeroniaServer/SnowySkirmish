execute store result score $tempuuid playerUUID run scoreboard players get @s playerUUID
execute if entity @s[tag=RedBBArrow] as @a[team=Red,predicate=snowski:matches_uuid] run data merge block 0 0 0 {Text1:'{"text":""}',Text2:'["",{"selector":"@p[team=Red,predicate=snowski:matches_uuid]"},{"text":"\'s Blizzard","color":"dark_aqua"}]'}
execute if entity @s[tag=GreenBBArrow] as @a[team=Green,predicate=snowski:matches_uuid] run data merge block 0 0 0 {Text1:'{"text":""}',Text2:'["",{"selector":"@p[team=Green,predicate=snowski:matches_uuid]"},{"text":"\'s Blizzard","color":"dark_aqua"}]'}
data modify entity @s CustomName set from block 0 0 0 Text2
scoreboard players reset $tempuuid playerUUID