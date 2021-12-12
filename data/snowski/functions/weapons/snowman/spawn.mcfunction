execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.fall master @a ~ ~ ~ 1 0.7
execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.fall master @a ~ ~ ~ 1 1
execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=SnowmanSpawn] at @s run particle block snow ~ ~1 ~ 0.6 0.6 0.6 0.1 200 force
execute as @e[tag=SnowmanSpawn] at @s run particle block ice ~ ~1 ~ 0.6 0.6 0.6 0.1 20 force

execute as @e[tag=SpawnRedSnowman] at @s run summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:0b,Team:"Red",Silent:1b,ArmorItems:[{id:"bow",Count:1b,tag:{Unbreakable:1b}},{},{},{id:"golden_hoe",Count:1b,tag:{Unbreakable:1b,CustomModelData:11}}],Tags:["RedSnowman","Snowman","NewSnowman"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896,Rotation:[-90f,0f]}
execute as @e[tag=SpawnGreenSnowman] at @s run summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:0b,Team:"Green",Silent:1b,ArmorItems:[{id:"bow",Count:1b,tag:{Unbreakable:1b}},{},{},{id:"golden_hoe",Count:1b,tag:{Unbreakable:1b,CustomModelData:12}}],Tags:["GreenSnowman","Snowman","NewSnowman"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896,Rotation:[90f,0f]}

execute as @a[team=Red,scores={spawnturret=1..}] at @s run data modify entity @e[tag=RedSnowman,limit=1,sort=nearest,distance=..5,tag=!spawned] ArmorItems[0].tag.UUID set from entity @s UUID
execute as @a[team=Green,scores={spawnturret=1..}] at @s run data modify entity @e[tag=GreenSnowman,limit=1,sort=nearest,distance=..5,tag=!spawned] ArmorItems[0].tag.UUID set from entity @s UUID
tag @e[tag=Snowman] add spawned
scoreboard players reset @a spawnturret

# execute at @s run setblock ~ -64 ~ oak_sign
# execute as @s[team=Red] at @s run data merge block ~ 174 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@s"},{"text":"\'s Snowball Turret","color":"dark_aqua"}]'}
# execute as @s[team=Green] at @s run data merge block ~ 174 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@s"},{"text":"\'s Snowball Turret","color":"dark_aqua"}]'}

execute as @e[tag=Snowman] run effect give @s invisibility 1000000 100 true
execute as @e[tag=Snowman] run effect give @s slowness 1000000 100 true

kill @e[tag=SnowmanSpawn]


execute as @e[tag=NewSnowman,tag=GreenSnowman] at @s run data modify entity @s PlacerUUID set from entity @p[team=Green] UUID[0]
execute as @e[tag=NewSnowman,tag=RedSnowman] at @s run data modify entity @s PlacerUUID set from entity @p[team=Red] UUID[0]

tag @e[tag=NewSnowman] remove NewSnowman