summon area_effect_cloud 135 86 7 {Duration:100,Tags:["PowerSpawn"]}
execute as @e[tag=PowerSpawn] at @s run spreadplayers ~ ~ 1 13 false @s

execute as @e[tag=PowerSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless entity @e[tag=PowerGift,distance=..2] unless block ~ ~-1 ~ #snowski:giftnotspawnable unless block ~ ~ ~ #snowski:giftnotspawnable run tp @s 135 86 7
execute as @e[tag=PowerSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless entity @e[tag=PowerGift,distance=..2] unless block ~ ~-1 ~ #snowski:giftnotspawnable unless block ~ ~ ~ #snowski:giftnotspawnable run spreadplayers ~ ~ 1 8 false @s

execute as @e[tag=PowerSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless entity @e[tag=PowerGift,distance=..2] unless block ~ ~-1 ~ #snowski:giftnotspawnable unless block ~ ~ ~ #snowski:giftnotspawnable run summon armor_stand ~ ~ ~ {Silent:1b,Tags:["PowerGift"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b}

execute as @e[tag=PowerSpawn] at @s unless block ~ ~-1 ~ #snowski:giftnotspawnable unless block ~ ~ ~ #snowski:giftnotspawnable run kill @e[tag=PowerSpawn]

execute as @e[tag=PowerSpawn] at @s run schedule function snowski:game/mode/powerup/respawn 3t append