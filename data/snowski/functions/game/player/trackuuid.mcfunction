scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @a[team=Red,predicate=snowski:matches_uuid] store result score @a[team=Green,distance=..4] UUIDtracker run scoreboard players get @s playerUUID
execute if entity @a[team=Green,predicate=snowski:matches_uuid] store result score @a[team=Red,distance=..4] UUIDtracker run scoreboard players get @s playerUUID
execute as @e[tag=Snowman,tag=!Melted] if score @s playerUUID = $tempuuid playerUUID run tag @s add sbfound
execute if entity @e[tag=Snowman,tag=sbfound] store result score @a[team=!Lobby,team=!Developer,team=!Spectator,distance=..4] UUIDtracker run scoreboard players get @s playerUUID
tag @e[tag=sbfound] remove sbfound
scoreboard players reset $tempuuid playerUUID