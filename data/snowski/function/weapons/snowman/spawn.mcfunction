execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.fall master @a ~ ~ ~ 1 0.7
execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.fall master @a ~ ~ ~ 1 1
execute as @e[tag=SnowmanSpawn] at @s run playsound block.powder_snow.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=SnowmanSpawn] at @s run particle minecraft:block{block_state:"minecraft:snow"} ~ ~1 ~ 0.6 0.6 0.6 0.1 200 force
execute as @e[tag=SnowmanSpawn] at @s run particle minecraft:block{block_state:"minecraft:ice"} ~ ~1 ~ 0.6 0.6 0.6 0.1 20 force

execute as @e[tag=SpawnRedSnowman] at @s run summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:0b,Team:"Red",ArmorItems:[{},{},{},{id:"golden_hoe",count:1,components:{"minecraft:custom_model_data":11}}],Tags:["RedSnowman","Snowman","NewSnowman"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896,Rotation:[-90f,0f],Marker:1b}
execute as @e[tag=SpawnGreenSnowman] at @s run summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:0b,Team:"Green",ArmorItems:[{},{},{},{id:"golden_hoe",count:1,components:{"minecraft:custom_model_data":12}}],Tags:["GreenSnowman","Snowman","NewSnowman"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896,Rotation:[90f,0f],Marker:1b}

#name and store UUID
setblock 0 0 0 oak_sign
execute as @e[tag=SnowmanSpawn] at @s run function snowski:weapons/snowman/name
setblock 0 0 0 air
execute as @e[tag=NewSnowman] store result score @s playerUUID run data get entity @s UUID[0]

scoreboard players reset @a spawnturret

execute as @e[tag=Snowman] run effect give @s invisibility infinite 100 true
execute as @e[tag=Snowman] run effect give @s slowness infinite 100 true

kill @e[tag=SnowmanSpawn]

tag @e[tag=NewSnowman] remove NewSnowman