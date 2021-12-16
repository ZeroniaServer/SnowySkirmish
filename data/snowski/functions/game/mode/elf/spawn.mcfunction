# Note to anyone who sees this:
# Don't worry. I hate the fact that I made this function like this just as much as you do.
# Had to do something to prevent gifts from spawning near eachother or on illegal blocks...
# -YZERO 2020
#
# Dear myself from the past. How come you weren't smart enough to use a block tag?
# It would've made everything so much more simple... I've fixed that for you, now we can hate it less.
# -YZERO 2021

summon area_effect_cloud 135 80 7 {Duration:20,Tags:["ElfSpawn"]}
execute as @e[tag=ElfSpawn] at @s run spreadplayers ~ ~ 1 18 false @s

execute as @e[tag=ElfSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless entity @e[tag=PowerGift,distance=..2] unless block ~ ~-1 ~ #snowski:giftnotspawnable unless block ~ ~ ~ #snowski:giftnotspawnable run tp @s 135 80 7
execute as @e[tag=ElfSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless entity @e[tag=PowerGift,distance=..2] unless block ~ ~-1 ~ #snowski:giftnotspawnable unless block ~ ~ ~ #snowski:giftnotspawnable run spreadplayers ~ ~ 1 8 false @s

execute as @e[tag=ElfSpawn] at @s unless entity @e[tag=ElfGift,distance=..2] unless entity @e[tag=PowerGift,distance=..2] unless block ~ ~-1 ~ #snowski:giftnotspawnable unless block ~ ~ ~ #snowski:giftnotspawnable run summon armor_stand ~ ~-0.7 ~ {Silent:1b,Tags:["ElfAnim"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b}

execute as @e[tag=ElfSpawn] at @s unless block ~ ~-1 ~ #snowski:giftnotspawnable unless block ~ ~ ~ #snowski:giftnotspawnable run kill @s