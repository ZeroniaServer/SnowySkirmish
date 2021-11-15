summon area_effect_cloud 135 86 7 {Duration:100,Tags:["PowerSpawn"]}
execute as @e[tag=PowerSpawn] at @s run spreadplayers ~ ~ 1 13 false @s

execute as @e[tag=PowerSpawn] at @s unless entity @e[tag=ElfGift,distance=..1] unless block ~ ~-1 ~ black_terracotta unless block ~ ~-1 ~ red_stained_glass unless block ~ ~-1 ~ lime_stained_glass unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ lime_concrete unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ white_concrete unless block ~ ~-1 ~ light unless block ~ ~ ~ light run tp @s 135 86 7
execute as @e[tag=PowerSpawn] at @s unless entity @e[tag=ElfGift,distance=..1] unless block ~ ~-1 ~ black_terracotta unless block ~ ~-1 ~ red_stained_glass unless block ~ ~-1 ~ lime_stained_glass unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ lime_concrete unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ white_concrete unless block ~ ~-1 ~ light unless block ~ ~ ~ light run spreadplayers ~ ~ 1 8 false @s

execute as @e[tag=PowerSpawn] at @s unless entity @e[tag=ElfGift,distance=..1] unless block ~ ~-1 ~ black_terracotta unless block ~ ~-1 ~ red_stained_glass unless block ~ ~-1 ~ lime_stained_glass unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ lime_concrete unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ white_concrete unless block ~ ~-1 ~ light unless block ~ ~ ~ light run summon armor_stand ~ ~ ~ {Silent:1b,Tags:["PowerGift"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b}

execute as @e[tag=PowerSpawn] at @s unless entity @e[tag=ElfGift,distance=..1] unless block ~ ~-1 ~ black_terracotta unless block ~ ~-1 ~ red_stained_glass unless block ~ ~-1 ~ lime_stained_glass unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ lime_concrete unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ white_concrete unless block ~ ~-1 ~ light unless block ~ ~ ~ light run kill @e[tag=PowerSpawn]

execute as @e[tag=PowerSpawn] at @s run schedule function snowski:game/mode/powerup/respawn 3t