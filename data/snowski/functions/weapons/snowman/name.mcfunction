execute as @a[team=Red,scores={spawnturret=1..}] run data modify block 0 0 0 front_text.messages[0] set value '["",{"selector":"@p[scores={spawnturret=1..}]"},{"text":"\'s Snowball Turret","color":"dark_aqua"}]'
execute as @a[team=Green,scores={spawnturret=1..}] run data modify block 0 0 0 front_text.messages[0] set value '["",{"selector":"@p[scores={spawnturret=1..}]"},{"text":"\'s Snowball Turret","color":"dark_aqua"}]'
execute as @e[type=armor_stand,tag=NewSnowman,limit=1,sort=nearest] run data modify entity @s CustomName set from block 0 0 0 front_text.messages[0]