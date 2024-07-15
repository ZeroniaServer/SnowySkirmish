#> Red Giftbox appearance stuff
scoreboard players add @e[tag=PowerGift] CmdData 1
execute as @e[tag=PowerGift,scores={CmdData=1}] at @s run particle minecraft:block{block_state:"minecraft:red_wool"} ~ ~1 ~ 0.4 0.4 0.4 0.2 40 force
execute as @e[tag=PowerGift,scores={CmdData=1}] at @s run effect give @s glowing 2 100 true
execute as @e[tag=PowerGift,scores={CmdData=1}] at @s run scoreboard players set $PowerupSpawned CmdData 1
execute as @e[tag=PowerGift,scores={CmdData=1}] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 1 2
execute as @e[tag=PowerGift,scores={CmdData=1}] run item replace entity @s armor.head with golden_hoe[custom_model_data=13]

#> Destroy floating boxes
execute as @e[tag=PowerGift] at @s if block ~ ~-0.1 ~ air run particle minecraft:block{block_state:"minecraft:red_wool"} ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=PowerGift] at @s if block ~ ~-0.1 ~ air run kill @s
execute as @e[tag=PowerGift] at @s if block ~ ~-0.1 ~ light run particle minecraft:block{block_state:"minecraft:red_wool"} ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=PowerGift] at @s if block ~ ~-0.1 ~ light run kill @s

#> Make powerups go from the right to the left slot if the left slot has been used.
execute as @a[scores={HasPowerup=1..}] unless items entity @s hotbar.3 * if items entity @s hotbar.5 snowball[custom_model_data=2] run tag @s add SwapIB
execute as @a[scores={HasPowerup=1..}] unless items entity @s hotbar.3 * if items entity @s hotbar.5 potion[custom_model_data=2] run tag @s add SwapHC
execute as @a[scores={HasPowerup=1..}] unless items entity @s hotbar.3 * if items entity @s hotbar.5 ghast_spawn_egg[custom_model_data=2] run tag @s add SwapST
execute as @a[scores={HasPowerup=1..}] unless items entity @s hotbar.3 * if items entity @s hotbar.5 snowball[custom_model_data=3] run tag @s add SwapBB
execute as @a[scores={HasPowerup=1..}] unless items entity @s hotbar.3 * if items entity @s hotbar.5 golden_hoe[custom_model_data=22] run tag @s add SwapCC
execute as @a[scores={HasPowerup=1..}] unless items entity @s hotbar.3 * if items entity @s hotbar.5 blaze_spawn_egg[custom_model_data=2] run tag @s add SwapCRP
execute as @a[scores={HasPowerup=1..}] unless items entity @s hotbar.3 * if items entity @s hotbar.5 rabbit_spawn_egg[custom_model_data=1] run tag @s add SwapS

execute as @a[tag=SwapIB] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapIB] run item replace entity @s hotbar.3 with snowball[custom_name='[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',lore=['[{"text":"A hard-hitting ice ball. It\'s like","italic":false,"color":"gray"}]','[{"text":"cheating in a snowball fight!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]'],custom_model_data=2,custom_data={Powerup:1b}] 1

execute as @a[tag=SwapBB] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapBB] run item replace entity @s hotbar.3 with snowball[custom_name='[{"text":"Blizzard in a Bottle","italic":false,"color":"dark_purple","underlined":true}]',lore=['[{"text":"Deploys a blizzard that","italic":false,"color":"gray"}]','[{"text":"damages enemies! Today\'s","italic":false,"color":"gray"}]','[{"text":"weather forecast: Snow.","italic":false,"color":"gray"}]'],custom_model_data=3,custom_data={Powerup:1b}] 1

execute as @a[tag=SwapCC] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapCC] run item replace entity @s hotbar.3 with golden_hoe[unbreakable={show_in_tooltip:0b},enchantments={levels:{knockback:2,sharpness:1},show_in_tooltip:0b},custom_name='[{"text":"Candy Cane Smasher","italic":false,"color":"light_purple","underlined":true}]',lore=['[{"text":"Knock some sugar-filled","italic":false,"color":"gray"}]','[{"text":"sense into your enemies!","italic":false,"color":"gray"}]','[{"text":"Don\'t eat it!","italic":false,"color":"gray"}]'],custom_model_data=22,custom_data={Powerup:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1

execute as @a[tag=SwapHC] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapHC] run item replace entity @s hotbar.3 with potion[custom_name='[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',lore=['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]'],custom_model_data=2,custom_data={Powerup:1b},hide_additional_tooltip={}] 1

execute as @a[tag=SwapS] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapS] run item replace entity @s hotbar.3 with rabbit_spawn_egg[custom_name='[{"text":"Sleigh","italic":false,"color":"#66ff66","underlined":true}]',lore=['[{"text":"Take a seat and go for the ride","italic":false,"color":"gray"}]','[{"text":"of your life!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Use the Sleigh to quickly move","italic":false,"color":"gray"}]','[{"text":"around the map. When the Sleigh","italic":false,"color":"gray"}]','[{"text":"falls you will jump. The Sleigh","italic":false,"color":"gray"}]','[{"text":"breaks after landing three times.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=1,entity_data={id:"minecraft:marker",Tags:["SleighSpawn"]},custom_data={Powerup:1b}] 1

execute as @a[tag=SwapST] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapST,team=Red] run item replace entity @s hotbar.3 with ghast_spawn_egg[custom_name='[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',lore=['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy players.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnRedSnowman","SnowmanSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=SwapST,team=Green] run item replace entity @s hotbar.3 with ghast_spawn_egg[custom_name='[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',lore=['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy players.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnGreenSnowman","SnowmanSpawn"]},custom_data={Powerup:1b}] 1

execute as @a[tag=SwapCRP] run item replace entity @s hotbar.5 with air
execute as @a[tag=SwapCRP,team=Red] run item replace entity @s hotbar.3 with blaze_spawn_egg[custom_name='[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',lore=['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow","italic":false,"color":"gray"}]','[{"text":"and ice balls.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnRedFire","FireSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=SwapCRP,team=Green] run item replace entity @s hotbar.3 with blaze_spawn_egg[custom_name='[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',lore=['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow","italic":false,"color":"gray"}]','[{"text":"and ice balls.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnGreenFire","FireSpawn"]},custom_data={Powerup:1b}] 1

tag @a remove SwapIB
tag @a remove SwapHC
tag @a remove SwapST
tag @a remove SwapBB
tag @a remove SwapCC
tag @a remove SwapCRP
tag @a remove SwapS



#> Allow non-knocked players with less than 2 powerups to pick up a new powerup.
execute as @a[team=!Spectator,team=!Lobby,tag=!Knocked] at @s if entity @e[tag=PowerGift,distance=..1,limit=1] store result score @s HasPowerup run clear @s #snowski:powerups[custom_data={Powerup:1b}] 0
execute as @a[team=!Spectator,team=!Lobby,tag=!Knocked,scores={HasPowerup=..1}] at @s if entity @e[tag=PowerGift,distance=..1,limit=1] run tag @s add GrabPowerup
execute as @a[tag=GrabPowerup] at @s at @e[tag=PowerGift,distance=..1,limit=1] run particle minecraft:block{block_state:"minecraft:red_wool"} ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
execute as @a[tag=GrabPowerup] at @s at @e[tag=PowerGift,distance=..1,limit=1] run particle minecraft:block{block_state:"minecraft:yellow_wool"} ~ ~ ~ 0.1 0.1 0.1 0.1 4 force
execute as @a[tag=GrabPowerup] at @s at @e[tag=PowerGift,distance=..1,limit=1] run particle minecraft:dust{color:[5,5,5],scale:1} ~ ~0.2 ~ .05 .05 .05 0.1 10 force
execute as @a[team=!Spectator,team=!Lobby,tag=!Knocked,scores={HasPowerup=..1}] at @s if entity @e[tag=PowerGift,distance=..1,limit=1] run kill @e[tag=PowerGift,distance=..1,limit=1]

execute as @a[tag=GrabPowerup] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["RNGPowerup"],Duration:100}
scoreboard players set @e[tag=RNGPowerup] RNGmax 7

execute as @e[tag=RNGPowerup,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RNGPowerup,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @a[tag=GrabPowerup] at @s store result score @s RNGscore run scoreboard players get @e[tag=RNGPowerup,limit=1,distance=..2,type=area_effect_cloud] RNGscore

#> Add powerups here (just copy paste the line and change the score)
execute as @a[tag=GrabPowerup,scores={RNGscore=0}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with potion[custom_name='[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',lore=['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]'],custom_model_data=2,custom_data={Powerup:1b},hide_additional_tooltip={}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=0}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with potion[custom_name='[{"text":"Hot Chocolate","italic":false,"color":"#663333","underlined":true}]',lore=['[{"text":"A refreshing mug of","italic":false,"color":"gray"}]','[{"text":"Hot Chocolate.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be used to heal","italic":false,"color":"gray"}]','[{"text":"yourself for 50HP or","italic":false,"color":"gray"}]','[{"text":"to self-revive out of","italic":false,"color":"gray"}]','[{"text":"a Knocked Out state.","italic":false,"color":"gray"}]'],custom_model_data=2,custom_data={Powerup:1b},hide_additional_tooltip={}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=1}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with snowball[custom_name='[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',lore=['[{"text":"A hard-hitting ice ball. It\'s like","italic":false,"color":"gray"}]','[{"text":"cheating in a snowball fight!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]'],custom_model_data=2,custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=1}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with snowball[custom_name='[{"text":"Ice Ball","italic":false,"color":"aqua","underlined":true}]',lore=['[{"text":"A hard-hitting ice ball. It\'s like","italic":false,"color":"gray"}]','[{"text":"cheating in a snowball fight!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Knocks out players in 1 hit.","italic":false,"color":"gray"}]','[{"text":"Has a limited short range.","italic":false,"color":"gray"}]'],custom_model_data=2,custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Red] hotbar.3 with ghast_spawn_egg[custom_name='[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',lore=['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnRedSnowman","SnowmanSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Red] hotbar.5 with ghast_spawn_egg[custom_name='[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',lore=['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnRedSnowman","SnowmanSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Green] hotbar.3 with ghast_spawn_egg[custom_name='[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',lore=['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnGreenSnowman","SnowmanSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=2}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Green] hotbar.5 with ghast_spawn_egg[custom_name='[{"text":"Snowball Turret","italic":false,"color":"#dddddd","underlined":true}]',lore=['[{"text":"A friendly snowman that","italic":false,"color":"gray"}]','[{"text":"fires bursts of snowballs","italic":false,"color":"gray"}]','[{"text":"at nearby enemy with players.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnGreenSnowman","SnowmanSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=3}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with snowball[custom_name='[{"text":"Blizzard in a Bottle","italic":false,"color":"dark_purple","underlined":true}]',lore=['[{"text":"Deploys a blizzard that","italic":false,"color":"gray"}]','[{"text":"damages enemies! Today\'s","italic":false,"color":"gray"}]','[{"text":"weather forecast: Snow.","italic":false,"color":"gray"}]'],custom_model_data=3,custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=3}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with snowball[custom_name='[{"text":"Blizzard in a Bottle","italic":false,"color":"dark_purple","underlined":true}]',lore=['[{"text":"Deploys a blizzard that","italic":false,"color":"gray"}]','[{"text":"damages enemies! Today\'s","italic":false,"color":"gray"}]','[{"text":"weather forecast: Snow.","italic":false,"color":"gray"}]'],custom_model_data=3,custom_data={Powerup:1b}]
execute as @a[tag=GrabPowerup,scores={RNGscore=4}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with golden_hoe[unbreakable={show_in_tooltip:0b},enchantments={levels:{knockback:2,sharpness:1},show_in_tooltip:0b},custom_name='[{"text":"Candy Cane Smasher","italic":false,"color":"light_purple","underlined":true}]',lore=['[{"text":"Knock some sugar-filled","italic":false,"color":"gray"}]','[{"text":"sense into your enemies!","italic":false,"color":"gray"}]','[{"text":"Don\'t eat it!","italic":false,"color":"gray"}]'],custom_model_data=22,custom_data={Powerup:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=4}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with golden_hoe[unbreakable={show_in_tooltip:0b},enchantments={levels:{knockback:2,sharpness:1},show_in_tooltip:0b},custom_name='[{"text":"Candy Cane Smasher","italic":false,"color":"light_purple","underlined":true}]',lore=['[{"text":"Knock some sugar-filled","italic":false,"color":"gray"}]','[{"text":"sense into your enemies!","italic":false,"color":"gray"}]','[{"text":"Don\'t eat it!","italic":false,"color":"gray"}]'],custom_model_data=22,custom_data={Powerup:1b},attribute_modifiers={modifiers:[],show_in_tooltip:false}]
execute as @a[tag=GrabPowerup,scores={RNGscore=5}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Red] hotbar.3 with blaze_spawn_egg[custom_name='[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',lore=['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow","italic":false,"color":"gray"}]','[{"text":"and ice balls.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnRedFire","FireSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=5}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Red] hotbar.5 with blaze_spawn_egg[custom_name='[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',lore=['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow","italic":false,"color":"gray"}]','[{"text":"and ice balls.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnRedFire","FireSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=5}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s[team=Green] hotbar.3 with blaze_spawn_egg[custom_name='[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',lore=['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow","italic":false,"color":"gray"}]','[{"text":"and ice balls.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnGreenFire","FireSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=5}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s[team=Green] hotbar.5 with blaze_spawn_egg[custom_name='[{"text":"Campfire Revive Point","italic":false,"color":"#ff6a00","underlined":true}]',lore=['[{"text":"Place down to make a spot","italic":false,"color":"gray"}]','[{"text":"where allies can quickly","italic":false,"color":"gray"}]','[{"text":"get revived.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can only be used once.","italic":false,"color":"gray"}]','[{"text":"Getting revived by the","italic":false,"color":"gray"}]','[{"text":"Campfire gives you 1 heart","italic":false,"color":"gray"}]','[{"text":"of health.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Can be destroyed by snow","italic":false,"color":"gray"}]','[{"text":"and ice balls.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=2,entity_data={id:"minecraft:marker",Tags:["SpawnGreenFire","FireSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=6}] at @s unless entity @s[scores={HasPowerup=1..}] run item replace entity @s hotbar.3 with rabbit_spawn_egg[custom_name='[{"text":"Sleigh","italic":false,"color":"#66ff66","underlined":true}]',lore=['[{"text":"Take a seat and go for the ride","italic":false,"color":"gray"}]','[{"text":"of your life!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Use the Sleigh to quickly move","italic":false,"color":"gray"}]','[{"text":"around the map. When the Sleigh","italic":false,"color":"gray"}]','[{"text":"falls you will jump. The Sleigh","italic":false,"color":"gray"}]','[{"text":"breaks after landing three times.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=1,entity_data={id:"minecraft:marker",Tags:["SleighSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup,scores={RNGscore=6}] at @s if entity @s[scores={HasPowerup=1..}] unless entity @s[scores={HasPowerup=2..}] run item replace entity @s hotbar.5 with rabbit_spawn_egg[custom_name='[{"text":"Sleigh","italic":false,"color":"#66ff66","underlined":true}]',lore=['[{"text":"Take a seat and go for the ride","italic":false,"color":"gray"}]','[{"text":"of your life!","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Use the Sleigh to quickly move","italic":false,"color":"gray"}]','[{"text":"around the map. When the Sleigh","italic":false,"color":"gray"}]','[{"text":"falls you will jump. The Sleigh","italic":false,"color":"gray"}]','[{"text":"breaks after landing three times.","italic":false,"color":"gray"}]'],can_break={predicates:[{blocks:["minecraft:clay"]}],show_in_tooltip:0b},can_place_on={predicates:[{blocks:["minecraft:snow_block","minecraft:clay","minecraft:white_concrete_powder","minecraft:packed_ice","minecraft:ice","minecraft:blue_ice"]}],show_in_tooltip:false},custom_model_data=1,entity_data={id:"minecraft:marker",Tags:["SleighSpawn"]},custom_data={Powerup:1b}] 1
execute as @a[tag=GrabPowerup] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute as @a[tag=GrabPowerup] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 2
execute as @a[tag=GrabPowerup] at @s run playsound block.chest.close master @s ~ ~ ~ 1 2

execute as @a[team=!Red] if entity @s[team=!Green] run scoreboard players reset @s HasPowerup

execute as @a[tag=GrabPowerup] store result score @s snowballammo run clear @s snowball[custom_model_data=1] 0

kill @e[tag=RNGPowerup]
tag @a[scores={RNGscore=0..}] remove GrabPowerup
scoreboard players reset @a RNGscore