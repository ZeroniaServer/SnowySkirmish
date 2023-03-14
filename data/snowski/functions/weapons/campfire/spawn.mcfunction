execute as @e[tag=FireSpawn] at @s run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0
execute as @e[tag=FireSpawn] at @s run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1
execute as @e[tag=FireSpawn] at @s run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1.2
execute as @e[tag=FireSpawn] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1.2
execute as @e[tag=FireSpawn] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1.5
execute as @e[tag=FireSpawn] at @s run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.05 5 force
execute as @e[tag=FireSpawn] at @s run particle minecraft:block oak_wood ~ ~ ~ 0.1 0 0.1 0 20
execute as @e[tag=FireSpawn] at @s if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ light[level=10] replace air

execute as @e[tag=SpawnRedFire] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,NoGravity:1b,Team:"Red",ArmorItems:[{},{},{},{id:"blaze_spawn_egg",Count:1b,tag:{Unbreakable:1b,CustomModelData:1}}],Tags:["RedCRP","CRP"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896}
execute as @e[tag=SpawnGreenFire] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,NoGravity:1b,Team:"Green",ArmorItems:[{},{},{},{id:"blaze_spawn_egg",Count:1b,tag:{Unbreakable:1b,CustomModelData:1}}],Tags:["GreenCRP","CRP"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896}

execute as @e[tag=SpawnRedFire] at @s run summon area_effect_cloud ~ ~ ~ {Duration:860,Tags:["CRPCircleRed","CRPCircle"]}
execute as @e[tag=SpawnGreenFire] at @s run summon area_effect_cloud ~ ~ ~ {Duration:860,Tags:["CRPCircleGreen","CRPCircle"]}


kill @e[tag=FireSpawn]
