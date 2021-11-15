#NO LONGER NEEDED AS SPAWNEGGS ARE GIVEN TO PLAYERS TO SPAWN THEM.
#execute as @s[team=Red] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["SpawnRedSnowman","SnowmanSpawn"],Duration:100}
#execute as @s[team=Green] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["SpawnGreenSnowman","SnowmanSpawn"],Duration:100}

execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.fall master @a ~ ~ ~ 1 0.7
execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.fall master @a ~ ~ ~ 1 1
execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=SnowmanSpawn] at @s run particle block snow ~ ~1 ~ 0.6 0.6 0.6 0.1 200 force
execute as @e[tag=SnowmanSpawn] at @s run particle block ice ~ ~1 ~ 0.6 0.6 0.6 0.1 20 force

execute as @e[tag=SpawnRedSnowman] at @s run summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:0b,Team:"Red",Silent:1b,ArmorItems:[{},{},{},{id:"golden_hoe",Count:1b,tag:{Unbreakable:1b,CustomModelData:11}}],Tags:["RedSnowman","Snowman","NewSnowman"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896,Rotation:[-90f,0f]}
execute as @e[tag=SpawnGreenSnowman] at @s run summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:0b,Team:"Green",Silent:1b,ArmorItems:[{},{},{},{id:"golden_hoe",Count:1b,tag:{Unbreakable:1b,CustomModelData:12}}],Tags:["GreenSnowman","Snowman","NewSnowman"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896,Rotation:[90f,0f]}

execute as @s[team=Red] at @s run data modify entity @e[tag=RedSnowman,limit=1,sort=nearest,distance=..3] SBUUID set from entity @s UUID
execute as @s[team=Green] at @s run data modify entity @e[tag=GreenSnowman,limit=1,sort=nearest,distance=..3] SBUUID set from entity @s UUID

execute as @e[tag=Snowman] run effect give @s invisibility 1000000 100 true
execute as @e[tag=Snowman] run effect give @s slowness 1000000 100 true

kill @e[tag=SnowmanSpawn]


execute as @e[tag=NewSnowman,tag=GreenSnowman] at @s run data modify entity @s PlacerUUID set from entity @p[team=Green] UUID[0]
execute as @e[tag=NewSnowman,tag=RedSnowman] at @s run data modify entity @s PlacerUUID set from entity @p[team=Red] UUID[0]

tag @e[tag=NewSnowman] remove NewSnowman