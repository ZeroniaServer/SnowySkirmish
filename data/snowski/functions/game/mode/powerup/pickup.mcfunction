#> Red Giftbox appearance stuff
scoreboard players add @e[tag=PowerGift] CmdData 1
execute as @e[tag=PowerGift,scores={CmdData=1}] at @s run particle block red_wool ~ ~1 ~ 0.4 0.4 0.4 0.2 40 force
execute as @e[tag=PowerGift,scores={CmdData=1}] at @s run effect give @s glowing 2 100 true
execute as @e[tag=PowerGift,scores={CmdData=1}] at @s run scoreboard players set $PowerupSpawned CmdData 1
execute as @e[tag=PowerGift,scores={CmdData=1}] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 1 2
execute as @e[tag=PowerGift,scores={CmdData=1}] run item replace entity @s armor.head with golden_hoe{CustomModelData:13}

#> Destroy floating boxes
execute as @e[tag=PowerGift] at @s if block ~ ~-0.1 ~ air run particle block red_wool ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=PowerGift] at @s if block ~ ~-0.1 ~ air run kill @s
execute as @e[tag=PowerGift] at @s if block ~ ~-0.1 ~ light run particle block red_wool ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=PowerGift] at @s if block ~ ~-0.1 ~ light run kill @s

#> Make powerups go from the right to the left slot if the left slot has been used.
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:snowball",tag:{CustomModelData:2}}] run tag @s add SwapIB
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:potion",tag:{CustomModelData:2}}] run tag @s add SwapHC
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:ghast_spawn_egg",tag:{CustomModelData:2}}] run tag @s add SwapST
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:snowball",tag:{CustomModelData:3}}] run tag @s add SwapBB
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:golden_hoe",tag:{CustomModelData:22}}] run tag @s add SwapCC
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:blaze_spawn_egg",tag:{CustomModelData:2}}] run tag @s add SwapCRP
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:rabbit_spawn_egg",tag:{CustomModelData:1}}] run tag @s add SwapS

execute as @a[tag=SwapIB] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapIB] run item replace entity @s hotbar.3 with snowball{Powerup:1b,CustomModelData:2,display:{Name:'[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',Lore:['[{"text":"A hard hitting ice ball","italic":false,"color":"gray"}]','[{"text":"It\'s like cheating in a","italic":false,"color":"gray"}]','[{"text":"snowball fight.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]']}} 1

execute as @a[tag=SwapBB] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapBB] run item replace entity @s hotbar.3 with snowball{Powerup:1b,CustomModelData:3,display:{Name:'[{"text":"Blizzard in a Bottle","italic":false,"color":"dark_purple","underlined":true}]',Lore:['[{"text":"Deploys a blizzard that damages enemies!","italic":false,"color":"gray"}]','[{"text":"Today\'s weather forecast: Snow.","italic":false,"color":"gray"}]']}} 1

execute as @a[tag=SwapCC] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapCC] run item replace entity @s hotbar.3 with golden_hoe{Powerup:1b,Unbreakable:1b,CustomModelData:22,display:{Name:'[{"text":"Candy Cane Smasher","italic":false,"color":"light_purple","underlined":true}]',Lore:['[{"text":"Knock some sugar-filled sense into your enemies!","italic":false,"color":"gray"}]','[{"text":"Don\'t eat it!","italic":false,"color":"gray"}]']},Enchantments:[{id:knockback,lvl:2},{id:sharpness,lvl:1}],HideFlags:1} 1

execute as @a[tag=SwapHC] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapHC] run item replace entity @s hotbar.3 with potion{Powerup:1b,CustomModelData:2,display:{Name:'[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',Lore:['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]']}} 1

execute as @a[tag=SwapS] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapS] run item replace entity @s hotbar.3 with rabbit_spawn_egg{Powerup:1b,CustomModelData:1,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],display:{Name:'[{"text":"Sleigh","italic":false,"color":"#66ff66","underlined":true}]',Lore:['[{"text":"Take a seat and go for","italic":false,"color":"gray"}]','[{"text":"the ride of your life!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Use the Sleigh to quickly","italic":false,"color":"gray"}]','[{"text":"move around the map. When the","italic":false,"color":"gray"}]','[{"text":"Sleigh falls you will jump, the","italic":false,"color":"gray"}]','[{"text":"sleigh breaks when it falls onto","italic":false,"color":"gray"}]','[{"text":"the ground.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SleighSpawn']}} 1

execute as @a[tag=SwapST] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapST,team=Red] run item replace entity @s hotbar.3 with ghast_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedSnowman','SnowmanSpawn']}} 1
execute as @a[tag=SwapST,team=Green] run item replace entity @s hotbar.3 with ghast_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenSnowman','SnowmanSpawn']}} 1

execute as @a[tag=SwapCRP] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapCRP,team=Red] run item replace entity @s hotbar.3 with blaze_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',Lore:['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow and ice balls.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedFire','FireSpawn']}} 1
execute as @a[tag=SwapCRP,team=Green] run item replace entity @s hotbar.3 with blaze_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',Lore:['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow and ice balls.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenFire','FireSpawn']}} 1

tag @a remove SwapIB
tag @a remove SwapHC
tag @a remove SwapST
tag @a remove SwapBB
tag @a remove SwapCC
tag @a remove SwapCRP
tag @a remove SwapS



#> Allow non-knocked players with less than 2 powerups to pick up a new powerup.
execute as @a[team=!Spectator,team=!Lobby,tag=!Knocked] at @s if entity @e[tag=PowerGift,distance=..1,limit=1] store result score @s HasPowerup run clear @s #snowski:powerups{Powerup:1b} 0
execute as @a[team=!Spectator,team=!Lobby,tag=!Knocked,scores={HasPowerup=..1}] at @s if entity @e[tag=PowerGift,distance=..1,limit=1] run tag @s add GrabPowerup
execute as @a[tag=GrabPowerup] at @s at @e[tag=PowerGift,distance=..1,limit=1] run particle block red_wool ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
execute as @a[tag=GrabPowerup] at @s at @e[tag=PowerGift,distance=..1,limit=1] run particle block yellow_wool ~ ~ ~ 0.1 0.1 0.1 0.1 4 force
execute as @a[tag=GrabPowerup] at @s at @e[tag=PowerGift,distance=..1,limit=1] run particle dust 5 5 5 1 ~ ~0.2 ~ .05 .05 .05 0.1 10 force
execute as @a[team=!Spectator,team=!Lobby,tag=!Knocked,scores={HasPowerup=..1}] at @s if entity @e[tag=PowerGift,distance=..1,limit=1] run kill @e[tag=PowerGift,distance=..1,limit=1]

execute as @a[tag=GrabPowerup] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["RNGPowerup"],Duration:100}
scoreboard players set @e[tag=RNGPowerup] RNGmax 7

execute as @e[tag=RNGPowerup,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RNGPowerup,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @a[tag=GrabPowerup] at @s store result score @s RNGscore run scoreboard players get @e[tag=RNGPowerup,limit=1,distance=..2,type=area_effect_cloud] RNGscore

#> Add powerups here (just copy paste the line and change the score)
execute as @a[tag=GrabPowerup,scores={RNGscore=0}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with potion{Powerup:1b,CustomModelData:2,display:{Name:'[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',Lore:['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=0}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with potion{Powerup:1b,CustomModelData:2,display:{Name:'[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',Lore:['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=1}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with snowball{Powerup:1b,CustomModelData:2,display:{Name:'[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',Lore:['[{"text":"A hard hitting ice ball","italic":false,"color":"gray"}]','[{"text":"It\'s like cheating in a","italic":false,"color":"gray"}]','[{"text":"snowball fight.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=1}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with snowball{Powerup:1b,CustomModelData:2,display:{Name:'[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',Lore:['[{"text":"A hard hitting ice ball","italic":false,"color":"gray"}]','[{"text":"It\'s like cheating in a","italic":false,"color":"gray"}]','[{"text":"snowball fight.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Red] hotbar.3 with ghast_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedSnowman','SnowmanSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Red] hotbar.5 with ghast_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedSnowman','SnowmanSpawn']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedSnowman','SnowmanSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Green] hotbar.3 with ghast_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenSnowman','SnowmanSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Green] hotbar.5 with ghast_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenSnowman','SnowmanSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=3}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with snowball{Powerup:1b,CustomModelData:3,display:{Name:'[{"text":"Blizzard in a Bottle","italic":false,"color":"dark_purple","underlined":true}]',Lore:['[{"text":"Deploys a blizzard that damages enemies!","italic":false,"color":"gray"}]','[{"text":"Today\'s weather forecast: Snow.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=3}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with snowball{Powerup:1b,CustomModelData:3,display:{Name:'[{"text":"Blizzard in a Bottle","italic":false,"color":"dark_purple","underlined":true}]',Lore:['[{"text":"Deploys a blizzard that damages enemies!","italic":false,"color":"gray"}]','[{"text":"Today\'s weather forecast: Snow.","italic":false,"color":"gray"}]']}}
execute as @a[tag=GrabPowerup,scores={RNGscore=4}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with golden_hoe{Powerup:1b,Unbreakable:1b,CustomModelData:22,display:{Name:'[{"text":"Candy Cane Smasher","italic":false,"color":"light_purple","underlined":true}]',Lore:['[{"text":"Knock some sugar-filled sense into your enemies!","italic":false,"color":"gray"}]','[{"text":"Don\'t eat it!","italic":false,"color":"gray"}]']},Enchantments:[{id:knockback,lvl:2},{id:sharpness,lvl:1}],HideFlags:1} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=4}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with golden_hoe{Powerup:1b,Unbreakable:1b,CustomModelData:22,display:{Name:'[{"text":"Candy Cane Smasher","italic":false,"color":"light_purple","underlined":true}]',Lore:['[{"text":"Knock some sugar-filled sense into your enemies!","italic":false,"color":"gray"}]','[{"text":"Don\'t eat it!","italic":false,"color":"gray"}]']},Enchantments:[{id:knockback,lvl:2},{id:sharpness,lvl:1}],HideFlags:1}
execute as @a[tag=GrabPowerup,scores={RNGscore=5}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Red] hotbar.3 with blaze_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',Lore:['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow and ice balls.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedFire','FireSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=5}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Red] hotbar.5 with blaze_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',Lore:['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow and ice balls.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedFire','FireSpawn']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedFire','FireSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=5}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Green] hotbar.3 with blaze_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',Lore:['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow and ice balls.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenFire','FireSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=5}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Green] hotbar.5 with blaze_spawn_egg{Powerup:1b,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',Lore:['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow and ice balls.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenFire','FireSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=6}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with rabbit_spawn_egg{Powerup:1b,CustomModelData:1,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],display:{Name:'[{"text":"Sleigh","italic":false,"color":"#66ff66","underlined":true}]',Lore:['[{"text":"Take a seat and go for","italic":false,"color":"gray"}]','[{"text":"the ride of your life!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Use the Sleigh to quickly","italic":false,"color":"gray"}]','[{"text":"move around the map. When the","italic":false,"color":"gray"}]','[{"text":"Sleigh falls you will jump, the","italic":false,"color":"gray"}]','[{"text":"sleigh breaks when it falls onto","italic":false,"color":"gray"}]','[{"text":"the ground.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SleighSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=6}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with rabbit_spawn_egg{Powerup:1b,CustomModelData:1,HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],display:{Name:'[{"text":"Sleigh","italic":false,"color":"#66ff66","underlined":true}]',Lore:['[{"text":"Take a seat and go for","italic":false,"color":"gray"}]','[{"text":"the ride of your life!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Use the Sleigh to quickly","italic":false,"color":"gray"}]','[{"text":"move around the map. When the","italic":false,"color":"gray"}]','[{"text":"Sleigh falls you will jump, the","italic":false,"color":"gray"}]','[{"text":"sleigh breaks when it falls onto","italic":false,"color":"gray"}]','[{"text":"the ground.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SleighSpawn']}} 1
execute as @a[tag=GrabPowerup] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute as @a[tag=GrabPowerup] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 2
execute as @a[tag=GrabPowerup] at @s run playsound block.chest.close master @s ~ ~ ~ 1 2

execute as @a[team=!Red] if entity @s[team=!Green] run scoreboard players reset @s HasPowerup


kill @e[tag=RNGPowerup]
tag @a[scores={RNGscore=0..}] remove GrabPowerup
scoreboard players reset @a RNGscore