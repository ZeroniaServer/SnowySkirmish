scoreboard players add @e[tag=ElfAnim] elftime 1
execute as @e[tag=ElfAnim,scores={elftime=1}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:1}
execute as @e[tag=ElfAnim,scores={elftime=1}] at @s run particle block snow ~ ~0.7 ~ 0 0 0 0.1 29 force
execute as @e[tag=ElfAnim,scores={elftime=1..7}] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=ElfAnim,scores={elftime=10}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:2}
execute as @e[tag=ElfAnim,scores={elftime=11}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:3}
execute as @e[tag=ElfAnim,scores={elftime=12}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:4}
execute as @e[tag=ElfAnim,scores={elftime=13}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:5}
execute as @e[tag=ElfAnim,scores={elftime=13}] at @s run summon armor_stand ~ ~ ~ {Tags:["ElfGift"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b}
execute as @e[tag=ElfAnim,scores={elftime=13}] at @s run tp @e[tag=ElfGift,limit=1,sort=nearest] @s
execute as @e[tag=ElfAnim,scores={elftime=16}] at @s run item replace entity @e[tag=ElfGift,limit=1,sort=nearest] armor.head with golden_hoe{CustomModelData:10}
execute as @e[tag=ElfAnim,scores={elftime=16}] at @s run playsound entity.chicken.egg master @a ~ ~ ~ 1 2
execute as @e[tag=ElfAnim,scores={elftime=16}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:6}
execute as @e[tag=ElfAnim,scores={elftime=17}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:7}
execute as @e[tag=ElfAnim,scores={elftime=18}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:8}
execute as @e[tag=ElfAnim,scores={elftime=19}] at @s run item replace entity @s armor.head with golden_hoe{CustomModelData:9}
execute as @e[tag=ElfAnim,scores={elftime=20..27}] at @s run tp @s ~ ~-0.1 ~
kill @e[tag=ElfAnim,scores={elftime=27..}]