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

#> Make powerups go from the right to the left slot if the left slot has been used.
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:snowball",tag:{CustomModelData:2}}] run tag @s add SwapIB
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:potion",tag:{CustomModelData:2}}] run tag @s add SwapHC
execute as @a[scores={HasPowerup=1..}] unless data entity @s Inventory[{Slot:3b}] if data entity @s Inventory[{Slot:5b,id:"minecraft:ghast_spawn_egg",tag:{CustomModelData:2}}] run tag @s add SwapST

execute as @a[tag=SwapIB] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapIB] run item replace entity @s hotbar.3 with snowball{CustomModelData:2,display:{Name:'[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',Lore:['[{"text":"A hard hitting ice ball","italic":false,"color":"gray"}]','[{"text":"It\'s like cheating in a","italic":false,"color":"gray"}]','[{"text":"snowball fight.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]']}} 1

execute as @a[tag=SwapHC] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapHC] run item replace entity @s hotbar.3 with potion{CustomModelData:2,display:{Name:'[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',Lore:['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]']}} 1

execute as @a[tag=SwapST] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapST,team=Red] run item replace entity @s hotbar.3 with ghast_spawn_egg{HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedSnowman','SnowmanSpawn']}} 1
execute as @a[tag=SwapST,team=Green] run item replace entity @s hotbar.3 with ghast_spawn_egg{HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenSnowman','SnowmanSpawn']}} 1

tag @a remove SwapIB
tag @a remove SwapHC
tag @a remove SwapST



#> Allow non-knocked players with less than 2 powerups to pick up a new powerup.
scoreboard players reset @a[team=!Red,tag=!Green] HasPowerup
execute as @a store result score @s HasPowerup run clear @s #snowski:powerups{CustomModelData:2} 0

execute as @a[team=!Spectator,team=!Lobby,tag=!Knocked,scores={HasPowerup=..1}] at @s if entity @e[tag=PowerGift,distance=..1,limit=1] run tag @s add GrabPowerup
execute as @a[team=!Spectator,team=!Lobby,tag=!Knocked,scores={HasPowerup=..1}] at @s if entity @e[tag=PowerGift,distance=..1,limit=1] run kill @e[tag=PowerGift,distance=..1,limit=1]

execute as @a[tag=GrabPowerup] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["RNGPowerup"],Duration:100}
scoreboard players set @e[tag=RNGPowerup] RNGmax 3

execute as @e[tag=RNGPowerup,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RNGPowerup,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @a[tag=GrabPowerup] at @s store result score @s RNGscore run scoreboard players get @e[tag=RNGPowerup,limit=1,distance=..2,type=area_effect_cloud] RNGscore

#> Add powerups here (just copy paste the line and change the score)
execute as @a[tag=GrabPowerup,scores={RNGscore=0}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with potion{CustomModelData:2,display:{Name:'[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',Lore:['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=0}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with potion{CustomModelData:2,display:{Name:'[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',Lore:['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=1}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with snowball{CustomModelData:2,display:{Name:'[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',Lore:['[{"text":"A hard hitting ice ball","italic":false,"color":"gray"}]','[{"text":"It\'s like cheating in a","italic":false,"color":"gray"}]','[{"text":"snowball fight.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=1}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with snowball{CustomModelData:2,display:{Name:'[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',Lore:['[{"text":"A hard hitting ice ball","italic":false,"color":"gray"}]','[{"text":"It\'s like cheating in a","italic":false,"color":"gray"}]','[{"text":"snowball fight.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Red] hotbar.3 with ghast_spawn_egg{HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedSnowman','SnowmanSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Red] hotbar.5 with ghast_spawn_egg{HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedSnowman','SnowmanSpawn']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnRedSnowman','SnowmanSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Green] hotbar.3 with ghast_spawn_egg{HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenSnowman','SnowmanSpawn']}} 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Green] hotbar.5 with ghast_spawn_egg{HideFlags:8,CanDestroy:["minecraft:clay"],CanPlaceOn:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"],CustomModelData:2,display:{Name:'[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',Lore:['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['SpawnGreenSnowman','SnowmanSpawn']}} 1

execute as @a[tag=GrabPowerup] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 2

kill @e[tag=RNGPowerup]
tag @a[scores={RNGscore=0..}] remove GrabPowerup
scoreboard players reset @a RNGscore