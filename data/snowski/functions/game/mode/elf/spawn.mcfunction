# Note to anyone who sees this:
# Don't worry. I hate the fact that I made this function like this just as much as you do.
# Had to do something to prevent gifts from spawning near eachother or on illegal blocks...

summon area_effect_cloud 135 80 7 {Duration:20,Tags:["ElfSpawn"]}
execute as @e[tag=ElfSpawn] at @s run spreadplayers ~ ~ 1 18 false @s

execute as @e[tag=ElfSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless block ~ ~-1 ~ black_terracotta unless block ~ ~-1 ~ red_stained_glass unless block ~ ~-1 ~ lime_stained_glass unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ lime_concrete unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ white_concrete run tp @s 135 80 7
execute as @e[tag=ElfSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless block ~ ~-1 ~ black_terracotta unless block ~ ~-1 ~ red_stained_glass unless block ~ ~-1 ~ lime_stained_glass unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ lime_concrete unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ white_concrete run spreadplayers ~ ~ 1 8 false @s

execute as @e[tag=ElfSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless block ~ ~-1 ~ black_terracotta unless block ~ ~-1 ~ red_stained_glass unless block ~ ~-1 ~ lime_stained_glass unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ lime_concrete unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ white_concrete run summon armor_stand ~ ~-0.7 ~ {Tags:["ElfAnim"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b}

execute as @e[tag=ElfSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless block ~ ~-1 ~ black_terracotta unless block ~ ~-1 ~ red_stained_glass unless block ~ ~-1 ~ lime_stained_glass unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ lime_concrete unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ white_concrete run kill @e[tag=ElfSpawn]