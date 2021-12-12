scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @a[team=Red,predicate=snowski:matches_uuid] run scoreboard players operation @p[team=Green,distance=..4] UUIDtracker = @s playerUUID
execute if entity @a[team=Green,predicate=snowski:matches_uuid] run scoreboard players operation @p[team=Red,distance=..4] UUIDtracker = @s playerUUID
scoreboard players reset $tempuuid playerUUID